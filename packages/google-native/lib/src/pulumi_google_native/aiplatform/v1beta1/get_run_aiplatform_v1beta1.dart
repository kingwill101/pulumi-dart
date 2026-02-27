import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_run_aiplatform_v1beta1_args.dart';
import 'get_run_aiplatform_v1beta1_result.dart';

/// Gets a TensorboardRun.
Future<GetRunAiplatformV1beta1Result> getRunAiplatformV1beta1(
  GetRunAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRunAiplatformV1beta1Result.fromMap(result);
}
