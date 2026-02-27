import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_autoscaler_args.dart';
import 'get_region_autoscaler_result.dart';

/// Returns the specified autoscaler.
Future<GetRegionAutoscalerResult> getRegionAutoscaler(
  GetRegionAutoscalerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionAutoscaler',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionAutoscalerResult.fromMap(result);
}
