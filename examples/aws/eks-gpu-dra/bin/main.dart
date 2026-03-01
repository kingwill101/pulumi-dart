import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:aws_dart_eks_gpu_dra/main.dart';

Future<void> main() async {
  await pulumi.Deployment.run(() => EksGpuDraStack());
}
