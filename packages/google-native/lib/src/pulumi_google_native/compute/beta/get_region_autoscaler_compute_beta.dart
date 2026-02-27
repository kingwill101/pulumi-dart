import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_autoscaler_compute_beta_args.dart';
import 'get_region_autoscaler_compute_beta_result.dart';

/// Returns the specified autoscaler.
Future<GetRegionAutoscalerComputeBetaResult> getRegionAutoscalerComputeBeta(
  GetRegionAutoscalerComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionAutoscaler',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionAutoscalerComputeBetaResult.fromMap(result);
}
