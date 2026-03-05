import 'dart:io';

import 'package:pulumi/automation.dart' as automation;

Future<void> main(List<String> args) async {
  final destroy = args.isNotEmpty && args.first == 'destroy';
  final stackName = Platform.environment['PULUMI_STACK'] ?? 'dev';
  final passphrase =
      Platform.environment['PULUMI_CONFIG_PASSPHRASE'] ?? 'pulumi-dart-dev';
  final awsRegion = Platform.environment['AWS_REGION']?.trim() ?? 'us-east-1';

  stdout.writeln('preparing website stack');
  final websiteStack = await _createOrSelectWebsiteStack(
    stackName: stackName,
    passphrase: passphrase,
    awsRegion: awsRegion,
  );
  stdout.writeln('website stack ready to deploy');

  if (destroy) {
    stdout.writeln('getting bucketID for object stack');
    final websiteOutputs = await websiteStack.outputs(showSecrets: true);
    final bucketId = '${websiteOutputs['bucketID'] ?? ''}'.trim();
    if (bucketId.isEmpty) {
      stderr.writeln('failed to get bucketID output');
      exitCode = 1;
      return;
    }
    stdout.writeln('got bucketID for object stack');

    stdout.writeln('preparing object stack');
    final objectStack = await _createOrSelectObjectStack(
      stackName: stackName,
      bucketId: bucketId,
      passphrase: passphrase,
      awsRegion: awsRegion,
    );
    stdout.writeln('object stack ready to deploy');

    stdout.writeln('Starting object stack destroy');
    await objectStack.destroy(yes: true, skipPreview: true);
    stdout.writeln('Object stack successfully destroyed');

    stdout.writeln('Starting website stack destroy');
    await websiteStack.destroy(yes: true, skipPreview: true);
    stdout.writeln('Website stack successfully destroyed');
    return;
  }

  stdout.writeln('Starting website stack update');
  await websiteStack.up();
  stdout.writeln('Website stack update succeeded!');

  final websiteOutputs = await websiteStack.outputs(showSecrets: true);
  final bucketId = '${websiteOutputs['bucketID'] ?? ''}'.trim();
  if (bucketId.isEmpty) {
    stderr.writeln('failed to get bucketID output');
    exitCode = 1;
    return;
  }
  stdout.writeln('got bucketID for object stack');

  stdout.writeln('preparing object stack');
  final objectStack = await _createOrSelectObjectStack(
    stackName: stackName,
    bucketId: bucketId,
    passphrase: passphrase,
    awsRegion: awsRegion,
  );
  stdout.writeln('object stack ready to deploy');

  stdout.writeln('Starting object stack update');
  await objectStack.up();
  stdout.writeln('Object stack update succeeded!');

  stdout.writeln('URL: ${websiteOutputs['websiteUrl']}');
}

Future<automation.Stack> _createOrSelectWebsiteStack({
  required String stackName,
  required String passphrase,
  required String awsRegion,
}) async {
  final workDir =
      '${Directory.current.path}/.inline-multi-stack/inline-multi-stack-website';
  final stack = await automation.LocalWorkspace.createOrSelectInlineStack(
    automation.InlineProgramArgs(
      stackName: stackName,
      projectName: 'inlineMultiStackWebsite',
      workDir: workDir,
      description: 'Website stack for multi-stack orchestration',
      program: '''
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class WebsiteStack extends Stack {
  late final Output<Object?> websiteUrl;
  late final Output<Object?> bucketID;

  WebsiteStack() : super('website-stack') {
    final siteBucket = aws.s3.Bucket(
      's3-website-bucket',
      aws.s3.BucketArgs(
        website: aws.s3.BucketWebsiteArgs(
          indexDocument: Input.fromValue('index.html'),
        ),
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
    bucketID = siteBucket.id.apply<Object?>((value) => value);
  }

  @override
  List<OutputProperty> getOutputProperties() {
    return <OutputProperty>[
      OutputProperty('websiteUrl', websiteUrl),
      OutputProperty('bucketID', bucketID),
    ];
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => WebsiteStack());
}
''',
    ),
    options: automation.LocalWorkspaceOptions(
      environmentVariables: <String, String>{
        'PULUMI_CONFIG_PASSPHRASE': passphrase,
      },
    ),
  );

  await _ensureInlineAwsDependency(workDir);
  await stack.workspace.installPlugin('aws', 'v7.20.0');
  await stack.setConfig('aws:region', awsRegion);
  await stack.refresh();
  return stack;
}

Future<automation.Stack> _createOrSelectObjectStack({
  required String stackName,
  required String bucketId,
  required String passphrase,
  required String awsRegion,
}) async {
  final workDir =
      '${Directory.current.path}/.inline-multi-stack/inline-multi-stack-object';
  final stack = await automation.LocalWorkspace.createOrSelectInlineStack(
    automation.InlineProgramArgs(
      stackName: stackName,
      projectName: 'inlineMultiStackObject',
      workDir: workDir,
      description: 'Object stack for multi-stack orchestration',
      program: '''
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class ObjectStack extends Stack {
  ObjectStack() : super('object-stack') {
    final config = Config();
    final bucketId = config.require('bucketId');
    const indexContent = """<html><head>
  <title>Hello S3</title><meta charset="UTF-8">
</head>
<body><p>Hello, world!</p><p>Made with Dart + Pulumi</p></body></html>""";

    aws.s3.BucketObject(
      'index',
      aws.s3.BucketObjectArgs(
        bucket: Input.fromValue(bucketId),
        content: Input.fromValue(indexContent),
        key: Input.fromValue('index.html'),
        contentType: Input.fromValue('text/html; charset=utf-8'),
      ),
    );
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => ObjectStack());
}
''',
    ),
    options: automation.LocalWorkspaceOptions(
      environmentVariables: <String, String>{
        'PULUMI_CONFIG_PASSPHRASE': passphrase,
      },
    ),
  );

  await _ensureInlineAwsDependency(workDir);
  await stack.workspace.installPlugin('aws', 'v7.20.0');
  await stack.setConfig('aws:region', awsRegion);
  await stack.setConfig('bucketId', bucketId);
  await stack.refresh();
  return stack;
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
