import 'package:pulumi/pulumi.dart' as pulumi;

import '../lib/main.dart';

Future<void> main() async {
  await pulumi.Deployment.run(() => JenkinsStack());
}
