import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_command/local.dart' as commandlocal;

class CommandStderrStack extends pulumi.Stack {
  CommandStderrStack() : super() {
    final stdoutAndStderrSuccess = commandlocal.Command(
      'stdout-and-stderr-success',
      args: commandlocal.CommandArgs(
        create: 'ls not-a-file index.ts not-a-file-2 || true'.output(),
      ),
    );

    final stdoutAndStderrError = commandlocal.Command(
      'stdout-and-stderr-error',
      args: commandlocal.CommandArgs(
        create: 'ls not-a-file index.ts not-a-file-2'.output(),
      ),
    );

    registerOutputs({
      'successStdout': stdoutAndStderrSuccess.stdout,
      'successStderr': stdoutAndStderrSuccess.stderr,
      'errorStdout': stdoutAndStderrError.stdout,
      'errorStderr': stdoutAndStderrError.stderr,
    });
  }
}
