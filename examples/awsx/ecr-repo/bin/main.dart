import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:awsx_dart_ts_ecr_repo/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.TsEcrRepoStack());
}
