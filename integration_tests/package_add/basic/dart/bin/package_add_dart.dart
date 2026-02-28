import 'package:pulumi/pulumi.dart';
import 'package:pulumi_random/pulumi_random.dart' as random;

class PackageAddStack extends Stack {
  PackageAddStack() {
    final pet = random.index.RandomPet(
      'smoke-pet',
      args: random.index.RandomPetArgs(length: 2),
    );
    registerOutputs({'petName': pet.id});
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => PackageAddStack());
}
