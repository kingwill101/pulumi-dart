import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_dataflow_v1b3_args.dart';
import 'get_job_dataflow_v1b3_result.dart';

/// Gets the state of the specified Cloud Dataflow job. To get the state of a job, we recommend using `projects.locations.jobs.get` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.get` is not recommended, as you can only get the state of jobs that are running in `us-central1`.
Future<GetJobDataflowV1b3Result> getJobDataflowV1b3(
  GetJobDataflowV1b3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataflow/v1b3:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobDataflowV1b3Result.fromMap(result);
}
