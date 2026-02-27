import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_execution_aiplatform_v1beta1_args.dart';
import 'get_execution_aiplatform_v1beta1_result.dart';

/// Retrieves a specific Execution.
Future<GetExecutionAiplatformV1beta1Result> getExecutionAiplatformV1beta1(
  GetExecutionAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getExecution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExecutionAiplatformV1beta1Result.fromMap(result);
}
