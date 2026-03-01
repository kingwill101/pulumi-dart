import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:aws_dart_static_website/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.StaticWebsiteStack());
}
