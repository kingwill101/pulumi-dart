import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_pulumiservice/index.dart' as pulumiservice;

class PulumiServiceStackResourceStack extends pulumi.Stack {
  PulumiServiceStackResourceStack() : super() {
    final config = pulumi.Config();
    final organizationName = config.require('organizationName');
    final projectName = config.require('projectName');
    final stackName = config.require('managedStackName');
    final forceDestroy = config.getBoolean('forceDestroy') ?? false;

    final stack = pulumiservice.Stack(
      'managed-stack',
      args: pulumiservice.StackArgs(
        organizationName: organizationName.output(),
        projectName: projectName.output(),
        stackName: stackName.output(),
        forceDestroy: forceDestroy.output(),
      ),
    );

    registerOutputs({
      'organizationName': stack.organizationName,
      'projectName': stack.projectName,
      'stackName': stack.stackName,
      'forceDestroy': stack.forceDestroy,
    });
  }
}
