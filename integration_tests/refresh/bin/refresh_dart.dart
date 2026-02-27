import 'package:pulumi/pulumi.dart';

class RefreshStack extends Stack {
  RefreshStack();
}

Future<void> main() async {
  await Deployment.runOrThrow(() => RefreshStack());
}
