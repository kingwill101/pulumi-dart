import 'package:pulumi/pulumi.dart';

class Regression12301Stack extends Stack {
  Regression12301Stack() {
    registerOutputs({'bar': Output.create(3)});
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => Regression12301Stack());
}
