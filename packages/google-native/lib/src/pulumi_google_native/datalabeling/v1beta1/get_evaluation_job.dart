import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_evaluation_job_args.dart';
import 'get_evaluation_job_result.dart';

/// Gets an evaluation job by resource name.
Future<GetEvaluationJobResult> getEvaluationJob(
  GetEvaluationJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getEvaluationJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEvaluationJobResult.fromMap(result);
}
