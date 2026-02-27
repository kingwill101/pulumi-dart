import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_evaluation_args.dart';
import 'get_evaluation_result.dart';

/// Gets an evaluation of conversation model.
Future<GetEvaluationResult> getEvaluation(
  GetEvaluationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getEvaluation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEvaluationResult.fromMap(result);
}
