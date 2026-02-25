import 'package:pulumi/pulumi.dart';

Future<void> main() async {
  final code = await DeploymentImpl.run(() {
    final deployment = DeploymentImpl.instance as DeploymentImpl;
    deployment.registerResourceOperation(
      deployment.logger.info('BeforeDelete was called'),
    );
    deployment.registerResourceOperation(
      deployment.logger.info('AfterDelete was called'),
    );
  });
  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
