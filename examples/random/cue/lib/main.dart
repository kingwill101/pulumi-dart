import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_random/pulumi_random.dart' as random;

class RandomCueStack extends pulumi.Stack {
  late final pulumi.Output<String> password;

  RandomCueStack() {
    final randomPassword = random.index.RandomPassword(
      'randomPassword',
      args: random.index.RandomPasswordArgs(
        length: 16.input(),
        special: true.input(),
        overrideSpecial: '_%@'.input(),
      ),
    );

    password = randomPassword.result;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('password', password)];
  }
}
