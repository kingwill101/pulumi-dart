import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_command/local.dart' as commandlocal;

class CommandSimpleAnsibleStack extends pulumi.Stack {
  CommandSimpleAnsibleStack() : super() {
    final localCommand = commandlocal.Command(
      'ansible',
      args: commandlocal.CommandArgs(
        create: 'ansible-playbook hello-world.yml'.input(),
      ),
    );

    registerOutputs({'output': localCommand.stdout});
  }
}
