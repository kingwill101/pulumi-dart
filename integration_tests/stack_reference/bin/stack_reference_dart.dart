import 'package:pulumi/pulumi.dart';

void main() {
  DeploymentImpl.run(() {
    final slug =
        '${DeploymentImpl.instance.organizationName}/${DeploymentImpl.instance.projectName}/${DeploymentImpl.instance.stackName}';
    StackReference(slug);
  });
}
