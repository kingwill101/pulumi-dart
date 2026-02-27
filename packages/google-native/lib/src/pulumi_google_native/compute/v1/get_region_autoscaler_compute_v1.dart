import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_autoscaler_compute_v1_args.dart';
import 'get_region_autoscaler_compute_v1_result.dart';

/// Returns the specified autoscaler.
Future<GetRegionAutoscalerComputeV1Result> getRegionAutoscalerComputeV1(
  GetRegionAutoscalerComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionAutoscaler',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionAutoscalerComputeV1Result.fromMap(result);
}
