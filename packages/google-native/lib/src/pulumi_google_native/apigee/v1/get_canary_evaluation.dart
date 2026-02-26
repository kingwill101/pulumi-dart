import 'package:pulumi/pulumi.dart';
import 'get_canary_evaluation_args.dart';
import 'get_canary_evaluation_result.dart';

/// Gets a CanaryEvaluation for an organization.
Future<GetCanaryEvaluationResult> getCanaryEvaluation(
  GetCanaryEvaluationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getCanaryEvaluation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCanaryEvaluationResult.fromMap(result);
}
