import 'package:pulumi/pulumi.dart' as pulumi;

import '../lib/main.dart';

void main() {
  pulumi.Deployment.run(() => AnsibleWordpressStack());
}
