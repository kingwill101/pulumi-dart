import 'package:pulumi/pulumi.dart';
import 'get_autoscaler_args.dart';
import 'get_autoscaler_result.dart';

/// Returns the specified autoscaler resource.
Future<GetAutoscalerResult> getAutoscaler(
  GetAutoscalerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getAutoscaler',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAutoscalerResult.fromMap(result);
}
