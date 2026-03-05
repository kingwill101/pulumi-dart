import 'package:pulumi/pulumi.dart' as pulumi;

import '../lib/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.ExampleStack());
}
