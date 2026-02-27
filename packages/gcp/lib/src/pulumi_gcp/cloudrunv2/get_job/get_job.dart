import 'package:pulumi/pulumi.dart';
import 'get_job_args.dart';
import 'get_job_result.dart';

/// Get information about a Google Cloud Run v2 Job. For more information see
/// the [official documentation](https://cloud.google.com/run/docs/)
/// and [API](https://cloud.google.com/run/docs/apis).
Future<GetJobResult> getJob(
  GetJobArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrunv2/getJob:getJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobResult.fromMap(result);
}
