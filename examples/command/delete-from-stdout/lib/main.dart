import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_command/local.dart' as commandlocal;

class CommandDeleteFromStdoutStack extends pulumi.Stack {
  CommandDeleteFromStdoutStack() : super() {
    final mktemp = commandlocal.Command(
      'mktemp',
      args: commandlocal.CommandArgs(
        create: 'mktemp'.output(),
        update: 'echo \$PULUMI_COMMAND_STDOUT'.output(),
        delete: 'rm \$PULUMI_COMMAND_STDOUT'.output(),
      ),
    );

    registerOutputs({'output': mktemp.stdout});
  }
}
