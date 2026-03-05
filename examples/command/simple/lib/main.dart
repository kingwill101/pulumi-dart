import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_command/local.dart' as commandlocal;
import 'package:pulumi_random/index.dart' as random;

import 'extras.dart';

class CommandSimpleStack extends pulumi.Stack {
  CommandSimpleStack() : super() {
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
        create: pw.result.apply((value) => 'echo "$value" > password.txt'),
        delete: 'rm -f password.txt'.output(),
        triggers: pw.result.apply((value) => [value]),
      ),
      options: pulumi.CustomResourceOptions(deleteBeforeReplace: true),
    );

    var deleteCommand = 'rm -f password2.txt';
    if (update) {
      deleteCommand += " && echo 'deleted'";
    }

    final pwd2 = commandlocal.Command(
      'pwd2',
      args: commandlocal.CommandArgs(
        create: 'echo "\$PASSWORD" > password2.txt'.output(),
        delete: deleteCommand.output(),
        environment: pw.result.apply((value) => {'PASSWORD': value}),
        triggers: pw.result.apply((value) => [value]),
      ),
      options: pulumi.CustomResourceOptions(deleteBeforeReplace: true),
    );

    final pwd3 = commandlocal.Command(
      'pwd3',
      args: commandlocal.CommandArgs(
        create: pw.result.apply((value) => 'touch "$value.txt"'),
        delete: pw.result.apply((value) => 'rm "$value.txt"'),
        triggers: pw.result.apply((value) => [value]),
      ),
    );

    if (fail) {
      commandlocal.Command(
        'fail',
        args: commandlocal.CommandArgs(
          create: 'echo "couldn\'t do what I wanted..." && false'.output(),
        ),
      );
    }

    registerOutputs({
      'output': pwd.stdout,
      'pwd2': pwd2.stdout,
      'pwd3': pwd3.stdout,
    });
  }
}
