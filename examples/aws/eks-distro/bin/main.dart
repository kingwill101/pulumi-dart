import 'package:aws_dart_eks_distro/main.dart' as app;
import 'package:pulumi/pulumi.dart' as pulumi;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.EksDistroStack());
}
