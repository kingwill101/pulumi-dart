import 'package:pulumi/pulumi.dart';

class MainStack extends Stack {}

Future<void> main() async {
  await DeploymentImpl.run(() => MainStack());
}
