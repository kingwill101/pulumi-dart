import 'package:pulumi/pulumi.dart';
import 'get_evaluation_job_args.dart';
import 'get_evaluation_job_result.dart';

/// Gets an evaluation job by resource name.
Future<GetEvaluationJobResult> getEvaluationJob(
  GetEvaluationJobArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getEvaluationJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEvaluationJobResult.fromMap(result);
}
