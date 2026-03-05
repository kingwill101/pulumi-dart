import 'dart:convert';
import 'dart:async';
import 'dart:io';

import 'package:pulumi/automation.dart' as automation;

const String _projectName = 'pulumi_over_http';
const String _workDirName = '.automation-pulumi-over-http';

Future<void> main([List<String> _ = const <String>[]]) async {
  final port = int.tryParse(Platform.environment['PORT'] ?? '') ?? 1337;
  final workDir = '${Directory.current.path}/$_workDirName';
  await Directory(workDir).create(recursive: true);

  await _ensurePlugins(workDir);

  final server = await HttpServer.bind(InternetAddress.anyIPv4, port);
  stdout.writeln('starting server on :$port');

  await for (final request in server) {
    unawaited(_handleRequest(request, workDir));
  }
}

Future<void> _handleRequest(HttpRequest request, String workDir) async {
  try {
    final segments = request.uri.pathSegments
        .where((segment) => segment.isNotEmpty)
        .toList(growable: false);

    if (segments.length == 1 && segments.first == 'sites') {
      if (request.method == 'POST') {
        await _createSite(request, workDir);
        return;
      }
      if (request.method == 'GET') {
        await _listSites(request, workDir);
        return;
      }
    }

    if (segments.length == 2 && segments.first == 'sites') {
      final siteId = segments[1];
      if (request.method == 'GET') {
        await _getSite(request, workDir, siteId);
        return;
      }
      if (request.method == 'PUT') {
        await _updateSite(request, workDir, siteId);
        return;
      }
      if (request.method == 'DELETE') {
        await _deleteSite(request, workDir, siteId);
        return;
      }
    }

    await _writeJson(request.response, HttpStatus.notFound, <String, Object?>{
      'error': 'route not found',
    });
  } catch (error) {
    await _writeJson(
      request.response,
      HttpStatus.internalServerError,
      <String, Object?>{'error': '$error'},
    );
  }
}

Future<void> _createSite(HttpRequest request, String workDir) async {
  final body = await _decodeJsonBody(request);
  final id = '${body['id'] ?? ''}'.trim();
  final content = '${body['content'] ?? ''}';
  if (id.isEmpty) {
    await _writeJson(request.response, HttpStatus.badRequest, <String, Object?>{
      'error': 'missing id',
    });
    return;
  }

  try {
    final stack = await automation.LocalWorkspace.createInlineStack(
      automation.InlineProgramArgs(
        stackName: id,
        projectName: _projectName,
        workDir: workDir,
        program: _inlineProgramSource(),
        description: 'Pulumi over HTTP (Dart)',
      ),
      options: _workspaceOptions(workDir),
    );

    await _ensureInlineAwsDependency(workDir);
    await stack.workspace.installPlugin('aws', 'v7.20.0');
    await stack.setConfig('aws:region', _region());
    await stack.setConfig('content', content);
    await stack.up();

    final outputs = await stack.outputs(showSecrets: true);
    await _writeJson(request.response, HttpStatus.ok, <String, Object?>{
      'id': id,
      'url': outputs['websiteUrl'],
    });
  } on automation.StackAlreadyExistsError {
    await _writeJson(request.response, HttpStatus.conflict, <String, Object?>{
      'error': 'stack "$id" already exists',
    });
  } on automation.PulumiCommandException catch (error) {
    await _writeJson(
      request.response,
      HttpStatus.internalServerError,
      <String, Object?>{'error': error.result.stderr},
    );
  }
}

Future<void> _listSites(HttpRequest request, String workDir) async {
  try {
    if (!await File('$workDir/Pulumi.yaml').exists()) {
      await _writeJson(request.response, HttpStatus.ok, <String, Object?>{
        'ids': const <String>[],
      });
      return;
    }
    final workspace = await automation.LocalWorkspace.create(
      _workspaceOptions(workDir),
    );
    final stacks = await workspace.listStacks();
    final ids = stacks.map((stack) => stack.name).toList(growable: false);
    await _writeJson(request.response, HttpStatus.ok, <String, Object?>{
      'ids': ids,
    });
  } on automation.PulumiCommandException catch (error) {
    await _writeJson(
      request.response,
      HttpStatus.internalServerError,
      <String, Object?>{'error': error.result.stderr},
    );
  }
}

Future<void> _getSite(HttpRequest request, String workDir, String id) async {
  try {
    final stack = await automation.LocalWorkspace.selectInlineStack(
      automation.InlineProgramArgs(
        stackName: id,
        projectName: _projectName,
        workDir: workDir,
        program: _inlineProgramSource(),
      ),
      options: _workspaceOptions(workDir),
    );
    final outputs = await stack.outputs(showSecrets: true);
    await _writeJson(request.response, HttpStatus.ok, <String, Object?>{
      'id': id,
      'url': outputs['websiteUrl'],
    });
  } on automation.StackNotFoundError {
    await _writeJson(request.response, HttpStatus.notFound, <String, Object?>{
      'error': 'stack "$id" not found',
    });
  } on automation.PulumiCommandException catch (error) {
    await _writeJson(
      request.response,
      HttpStatus.internalServerError,
      <String, Object?>{'error': error.result.stderr},
    );
  }
}

Future<void> _updateSite(HttpRequest request, String workDir, String id) async {
  final body = await _decodeJsonBody(request);
  final content = '${body['content'] ?? ''}';

  try {
    final stack = await automation.LocalWorkspace.selectInlineStack(
      automation.InlineProgramArgs(
        stackName: id,
        projectName: _projectName,
        workDir: workDir,
        program: _inlineProgramSource(),
      ),
      options: _workspaceOptions(workDir),
    );

    await _ensureInlineAwsDependency(workDir);
    await stack.workspace.installPlugin('aws', 'v7.20.0');
    await stack.setConfig('aws:region', _region());
    await stack.setConfig('content', content);
    await stack.up();

    final outputs = await stack.outputs(showSecrets: true);
    await _writeJson(request.response, HttpStatus.ok, <String, Object?>{
      'id': id,
      'url': outputs['websiteUrl'],
    });
  } on automation.StackNotFoundError {
    await _writeJson(request.response, HttpStatus.notFound, <String, Object?>{
      'error': 'stack "$id" not found',
    });
  } on automation.ConcurrentUpdateError {
    await _writeJson(request.response, HttpStatus.conflict, <String, Object?>{
      'error': 'stack "$id" already has update in progress',
    });
  } on automation.PulumiCommandException catch (error) {
    await _writeJson(
      request.response,
      HttpStatus.internalServerError,
      <String, Object?>{'error': error.result.stderr},
    );
  }
}

Future<void> _deleteSite(HttpRequest request, String workDir, String id) async {
  try {
    final stack = await automation.LocalWorkspace.selectInlineStack(
      automation.InlineProgramArgs(
        stackName: id,
        projectName: _projectName,
        workDir: workDir,
        program: _inlineProgramSource(),
      ),
      options: _workspaceOptions(workDir),
    );

    await stack.setConfig('aws:region', _region());
    await stack.destroy(yes: true, skipPreview: true);
    await stack.workspace.removeStack(id, yes: true, force: true);
    await _writeJson(request.response, HttpStatus.ok, <String, Object?>{
      'id': id,
      'deleted': true,
    });
  } on automation.StackNotFoundError {
    await _writeJson(request.response, HttpStatus.notFound, <String, Object?>{
      'error': 'stack "$id" not found',
    });
  } on automation.PulumiCommandException catch (error) {
    await _writeJson(
      request.response,
      HttpStatus.internalServerError,
      <String, Object?>{'error': error.result.stderr},
    );
  }
}

automation.LocalWorkspaceOptions _workspaceOptions(String workDir) {
  final passphrase =
      Platform.environment['PULUMI_CONFIG_PASSPHRASE'] ?? 'pulumi-dart-dev';
  return automation.LocalWorkspaceOptions(
    workDir: workDir,
    environmentVariables: <String, String>{
      'PULUMI_CONFIG_PASSPHRASE': passphrase,
    },
  );
}

String _region() => Platform.environment['AWS_REGION']?.trim() ?? 'us-east-1';

Future<Map<String, dynamic>> _decodeJsonBody(HttpRequest request) async {
  final raw = await utf8.decoder.bind(request).join();
  if (raw.trim().isEmpty) {
    return <String, dynamic>{};
  }
  final decoded = jsonDecode(raw);
  if (decoded is Map<String, dynamic>) {
    return decoded;
  }
  if (decoded is Map) {
    return decoded.map((key, value) => MapEntry('$key', value));
  }
  throw const FormatException('request body must be a JSON object');
}

Future<void> _writeJson(
  HttpResponse response,
  int statusCode,
  Map<String, Object?> payload,
) async {
  response.statusCode = statusCode;
  response.headers.contentType = ContentType.json;
  response.write(jsonEncode(payload));
  await response.close();
}

Future<void> _ensurePlugins(String workDir) async {
  final workspace = await automation.LocalWorkspace.create(
    _workspaceOptions(workDir),
  );
  await _ensureInlineAwsDependency(workDir);
  await workspace.installPlugin('aws', 'v7.20.0');
}

Future<void> _ensureInlineAwsDependency(String workDir) async {
  final pubspec = File('$workDir/pubspec.yaml');
  if (!await pubspec.exists()) {
    return;
  }
  final content = await pubspec.readAsString();
  if (content.contains('pulumi_aws:')) {
    return;
  }
  final updated = content.replaceFirst(
    'dependencies:\n',
    'dependencies:\n  pulumi_aws: ^7.20.0\n',
  );
  await pubspec.writeAsString(updated);
}

String _inlineProgramSource() {
  return '''
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class SiteStack extends Stack {
  late final Output<Object?> websiteUrl;

  SiteStack() : super('site-stack') {
    final config = Config();
    final content = config.require('content');

    final siteBucket = aws.s3.Bucket(
      's3-website-bucket',
      aws.s3.BucketArgs(
        website: aws.s3.BucketWebsiteArgs(
          indexDocument: Input.fromValue('index.html'),
        ),
      ),
    );

    aws.s3.BucketObject(
      'index',
      aws.s3.BucketObjectArgs(
        bucket: siteBucket.id,
        content: Input.fromValue(content),
        key: Input.fromValue('index.html'),
        contentType: Input.fromValue('text/html; charset=utf-8'),
      ),
    );

    aws.s3.BucketPolicy(
      'bucketPolicy',
      aws.s3.BucketPolicyArgs(
        bucket: siteBucket.id,
        policy: siteBucket.id.apply((id) {
          return """
{
  "Version": "2012-10-17",
  "Statement": [{
    "Effect": "Allow",
    "Principal": "*",
    "Action": ["s3:GetObject"],
    "Resource": ["arn:aws:s3:::\$id/*"]
  }]
}
""";
        }),
      ),
    );

    websiteUrl = siteBucket.websiteEndpoint.apply<Object?>((value) => value);
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return <OutputProperty>[
      OutputProperty('websiteUrl', websiteUrl),
    ];
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => SiteStack());
}
''';
}
