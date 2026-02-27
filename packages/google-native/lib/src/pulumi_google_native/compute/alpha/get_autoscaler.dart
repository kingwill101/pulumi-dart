import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autoscaler_args.dart';
import 'get_autoscaler_result.dart';

/// Returns the specified autoscaler resource.
Future<GetAutoscalerResult> getAutoscaler(
  GetAutoscalerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getAutoscaler',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalerResult.fromMap(result);
}
