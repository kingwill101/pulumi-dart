import 'package:pulumi/pulumi.dart' hide Config;
import 'get_autoscaler_args2.dart';
import 'get_autoscaler_result2.dart';

/// Returns the specified autoscaler resource.
Future<GetAutoscalerResult2> getAutoscaler2(
  GetAutoscalerArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getAutoscaler',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAutoscalerResult2.fromMap(result);
}
