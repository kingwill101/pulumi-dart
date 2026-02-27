import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_bigquery_v2_args.dart';
import 'get_job_bigquery_v2_result.dart';

/// Returns information about a specific job. Job information is available for a six month period after creation. Requires that you're the person who ran the job, or have the Is Owner project role.
Future<GetJobBigqueryV2Result> getJobBigqueryV2(
  GetJobBigqueryV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquery/v2:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobBigqueryV2Result.fromMap(result);
}
