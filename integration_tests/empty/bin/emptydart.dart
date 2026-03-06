import 'package:pulumi/pulumi.dart';

class MyStack extends Stack {}


main() {
  DeploymentImpl.run(() => MyStack());
}
