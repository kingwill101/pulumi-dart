import 'package:pulumi/pulumi.dart';

Future<void> main() async {
  final code = await DeploymentImpl.run(() {
    throw Exception('BeforeCreate hook failed');
  });

  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
