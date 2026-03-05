import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_command/local.dart' as commandlocal;

class CommandLocalCommandStack extends pulumi.Stack {
  CommandLocalCommandStack() : super() {
    final localEcho = commandlocal.Command(
      'localEcho',
      args: commandlocal.CommandArgs(
        create: 'echo "hello from pulumi command (dart)"'.output(),
      ),
    );

    registerOutputs({'stdout': localEcho.stdout, 'stderr': localEcho.stderr});
  }
}
