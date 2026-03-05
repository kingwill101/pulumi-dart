import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_command/local.dart' as commandlocal;
import 'package:pulumi_random/index.dart' as random;

class CommandSimpleRunStack extends pulumi.Stack {
  CommandSimpleRunStack() : super() {
    final pw = random.RandomPassword(
      'pw',
      args: random.RandomPasswordArgs(
        length: 10.output(),
        special: false.output(),
      ),
    );

    final plainFile = commandlocal.Command(
      'plainFile',
      args: commandlocal.CommandArgs(
        create: 'echo "Hello world!" > hello.txt'.output(),
        assetPaths: ['*.txt', '!**password**'].output(),
        archivePaths: ['*.txt', '!**password**'].output(),
      ),
    );

    final secretFile = commandlocal.Command(
      'secretFile',
      args: commandlocal.CommandArgs(
        create: pw.result.apply((value) => 'echo "$value" > password.txt'),
        assetPaths: ['password.txt'].output(),
      ),
    );

    final globTest = commandlocal.Command(
      'globTest',
      args: commandlocal.CommandArgs(
        create: 'pwd'.output(),
        dir: '.'.output(),
        archivePaths: ['**/*.txt', '*', '!yarn.lock', '!**password**'].output(),
      ),
    );

    registerOutputs({
      'plainOutput': plainFile.stdout,
      'plainAssets': plainFile.assets,
      'plainArchive': plainFile.archive,
      'secretOutput': secretFile.stdout,
      'secretAssets': secretFile.assets,
      'secretArchive': secretFile.archive,
      'globTestAssets': globTest.archive,
    });
  }
}
