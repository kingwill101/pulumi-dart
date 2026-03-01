import 'package:pulumi/pulumi.dart' as pulumi;

import '../lib/main.dart';

void main() {
  pulumi.run((_) => K8sVotingAppStack());
}
