import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:serverless_raw/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.ServerlessRawStack());
}
