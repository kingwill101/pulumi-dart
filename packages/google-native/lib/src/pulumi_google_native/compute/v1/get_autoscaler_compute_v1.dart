import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autoscaler_compute_v1_args.dart';
import 'get_autoscaler_compute_v1_result.dart';

/// Returns the specified autoscaler resource.
Future<GetAutoscalerComputeV1Result> getAutoscalerComputeV1(
  GetAutoscalerComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getAutoscaler',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalerComputeV1Result.fromMap(result);
}
