import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_dart_faas/pulumi_dart_faas.dart' as faas;

class BinaryUploadStack extends pulumi.Stack {
  late final pulumi.Output<String> url;

  BinaryUploadStack() {
    final config = pulumi.Config();
    final baseImageUri = config.require('baseImageUri');

    final buildBundle = faas.DartBuildArchive(
      'build-binary-bundle',
      args: faas.DartBuildArchiveArgs(
        entryPoint: 'backend/bin/server.dart',
        archivePath: 'build_deploy.tar.gz',
        target: faas.DartBuildTarget.executable(
          outputPath: 'build_deploy/bin/server',
          targetOs: 'linux',
          targetArch: 'x64',
        ),
        triggers: ['backend/bin/server.dart'].input(),
      ),
    );

    final service = faas.GcpCloudRunDartFunction(
      'hello-binary',
      args: faas.GcpDartFunctionArgs(
        source: faas.DartFunctionSource.archive(
          archive: buildBundle.archive,
          baseImageUri: baseImageUri.input(),
          command: 'bin/server'.input(),
        ),
      ),
    );

    url = service.url;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
