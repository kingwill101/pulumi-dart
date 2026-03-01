import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:aws_dart_eks_migrate_nodegroups/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.EksMigrateNodegroupsStack());
}
