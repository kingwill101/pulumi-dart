import 'package:pulumi/pulumi.dart';
import 'get_evaluation_args2.dart';
import 'get_evaluation_result2.dart';

/// Gets details of a single Evaluation.
Future<GetEvaluationResult2> getEvaluation2(
  GetEvaluationArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workloadmanager/v1:getEvaluation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEvaluationResult2.fromMap(result);
}
