import '../lib/main.dart' as app;
import 'package:pulumi/pulumi.dart' as pulumi;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.K8sRubyOnRailsPostgresqlStack());
}
