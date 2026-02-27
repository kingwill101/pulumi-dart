import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_context_aiplatform_v1beta1_args.dart';
import 'get_context_aiplatform_v1beta1_result.dart';

/// Retrieves a specific Context.
Future<GetContextAiplatformV1beta1Result> getContextAiplatformV1beta1(
  GetContextAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getContext',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContextAiplatformV1beta1Result.fromMap(result);
}
