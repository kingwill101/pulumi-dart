import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_ml_v1_args.dart';
import 'get_job_ml_v1_result.dart';

/// Describes a job.
Future<GetJobMlV1Result> getJobMlV1(
  GetJobMlV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobMlV1Result.fromMap(result);
}
