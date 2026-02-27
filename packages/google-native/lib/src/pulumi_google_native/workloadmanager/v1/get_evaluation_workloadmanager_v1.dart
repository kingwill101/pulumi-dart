import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_evaluation_workloadmanager_v1_args.dart';
import 'get_evaluation_workloadmanager_v1_result.dart';

/// Gets details of a single Evaluation.
Future<GetEvaluationWorkloadmanagerV1Result> getEvaluationWorkloadmanagerV1(
  GetEvaluationWorkloadmanagerV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workloadmanager/v1:getEvaluation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEvaluationWorkloadmanagerV1Result.fromMap(result);
}
