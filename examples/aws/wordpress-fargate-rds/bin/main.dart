import 'package:aws_dart_wordpress_fargate_rds/main.dart' as app;
import 'package:pulumi/pulumi.dart' as pulumi;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.WordpressFargateRdsStack());
}
