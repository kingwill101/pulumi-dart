import 'package:pulumi/pulumi.dart';
import 'get_job_args2.dart';
import 'get_job_result2.dart';

/// Returns information about a specific job. Job information is available for a six month period after creation. Requires that you're the person who ran the job, or have the Is Owner project role.
Future<GetJobResult2> getJob2(
  GetJobArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquery/v2:getJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobResult2.fromMap(result);
}
