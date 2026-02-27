import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_machine_image_compute_beta_args.dart';
import 'get_machine_image_compute_beta_result.dart';

/// Returns the specified machine image.
Future<GetMachineImageComputeBetaResult> getMachineImageComputeBeta(
  GetMachineImageComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getMachineImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineImageComputeBetaResult.fromMap(result);
}
