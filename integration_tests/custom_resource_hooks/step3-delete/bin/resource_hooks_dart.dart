import 'package:pulumi/pulumi.dart';

Future<void> main() async {
  final code = await DeploymentImpl.run(() {
    final deployment = DeploymentImpl.instance as DeploymentImpl;
    deployment.registerResourceOperation(
      deployment.logger.info('BeforeDelete: value was step2'),
    );
    deployment.registerResourceOperation(
      deployment.logger.info('AfterDelete: value was step2'),
    );
  });

  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
