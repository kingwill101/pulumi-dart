import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_command/local.dart' as commandlocal;

class CommandStdinStack extends pulumi.Stack {
  CommandStdinStack() : super() {
    final stdinCommand = commandlocal.Command(
      'stdin',
      args: commandlocal.CommandArgs(
        create: 'head -n 1'.output(),
        stdin: 'the quick brown fox\njumped over\nthe lazy dog'.output(),
      ),
    );

    registerOutputs({'output': stdinCommand.stdout});
  }
}
