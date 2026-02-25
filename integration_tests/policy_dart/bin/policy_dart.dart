import 'package:pulumi/pulumi.dart';

class PolicyStack extends Stack {}

Future<void> main() async {
  await DeploymentImpl.run(() => PolicyStack());
}
