import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_autoscaler_args.dart';
import 'get_region_autoscaler_result.dart';

/// Returns the specified autoscaler.
Future<GetRegionAutoscalerResult> getRegionAutoscaler(
  GetRegionAutoscalerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionAutoscaler',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionAutoscalerResult.fromMap(result);
}
