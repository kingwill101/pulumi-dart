import 'package:pulumi/pulumi.dart';
import 'get_autoscaler_args3.dart';
import 'get_autoscaler_result3.dart';

/// Returns the specified autoscaler resource.
Future<GetAutoscalerResult3> getAutoscaler3(
  GetAutoscalerArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getAutoscaler',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAutoscalerResult3.fromMap(result);
}
