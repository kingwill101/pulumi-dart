import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_machine_image_compute_v1_args.dart';
import 'get_machine_image_compute_v1_result.dart';

/// Returns the specified machine image.
Future<GetMachineImageComputeV1Result> getMachineImageComputeV1(
  GetMachineImageComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getMachineImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineImageComputeV1Result.fromMap(result);
}
