import 'package:pulumi/pulumi.dart';
import 'get_evaluation_args.dart';
import 'get_evaluation_result.dart';

/// Gets an evaluation of conversation model.
Future<GetEvaluationResult> getEvaluation(
  GetEvaluationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getEvaluation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEvaluationResult.fromMap(result);
}
