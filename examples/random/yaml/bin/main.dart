import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:random_dart_yaml/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.RandomYamlStack());
}
