import 'package:aws_dart_eks_gpu_dra/main.dart' as app;
import 'package:pulumi/pulumi.dart' as pulumi;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.EksGpuDraStack());
}
