import 'package:aws_dart_nextjs/main.dart' as app;
import 'package:pulumi/pulumi.dart' as pulumi;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.NextJsStack());
}
