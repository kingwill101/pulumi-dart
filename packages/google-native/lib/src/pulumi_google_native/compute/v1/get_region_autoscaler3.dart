import 'package:pulumi/pulumi.dart';
import 'get_region_autoscaler_args3.dart';
import 'get_region_autoscaler_result3.dart';

/// Returns the specified autoscaler.
Future<GetRegionAutoscalerResult3> getRegionAutoscaler3(
  GetRegionAutoscalerArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionAutoscaler',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionAutoscalerResult3.fromMap(result);
}
