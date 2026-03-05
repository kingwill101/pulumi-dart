import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_command/local.dart' as commandlocal;

class CommandRandomStack extends pulumi.Stack {
  CommandRandomStack() : super() {
    final random = commandlocal.Command(
      'random',
      args: commandlocal.CommandArgs(create: 'openssl rand -hex 16'.output()),
    );

    registerOutputs({'output': random.stdout});
  }
}
