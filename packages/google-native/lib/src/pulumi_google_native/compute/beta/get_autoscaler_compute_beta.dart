import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autoscaler_compute_beta_args.dart';
import 'get_autoscaler_compute_beta_result.dart';

/// Returns the specified autoscaler resource.
Future<GetAutoscalerComputeBetaResult> getAutoscalerComputeBeta(
  GetAutoscalerComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getAutoscaler',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalerComputeBetaResult.fromMap(result);
}
