import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_autoscaler_args2.dart';
import 'get_region_autoscaler_result2.dart';

/// Returns the specified autoscaler.
Future<GetRegionAutoscalerResult2> getRegionAutoscaler2(
  GetRegionAutoscalerArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionAutoscaler',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionAutoscalerResult2.fromMap(result);
}
