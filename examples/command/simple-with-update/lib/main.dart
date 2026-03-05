import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_command/local.dart' as commandlocal;
import 'package:pulumi_random/index.dart' as random;

import 'extras.dart';

class CommandSimpleWithUpdateStack extends pulumi.Stack {
  CommandSimpleWithUpdateStack() : super() {
    final pw = random.RandomPassword(
      'pw',
      args: random.RandomPasswordArgs(
        length: len.output(),
        special: false.output(),
      ),
    );

    final pwd = commandlocal.Command(
      'pwd',
      args: commandlocal.CommandArgs(
        create: pw.result.apply((value) => 'touch "${value}cat.txt"'),
        delete: pw.result.apply((value) => 'rm "${value}dog.txt"'),
        triggers: pw.result.apply((value) => [value]),
      ),
    );

    registerOutputs({'output': pwd.stdout});
  }
}
