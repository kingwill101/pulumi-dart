import 'package:pulumi/pulumi.dart' hide Config;
import 'get_job_args5.dart';
import 'get_job_result5.dart';

/// Gets the state of the specified Cloud Dataflow job. To get the state of a job, we recommend using `projects.locations.jobs.get` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.get` is not recommended, as you can only get the state of jobs that are running in `us-central1`.
Future<GetJobResult5> getJob5(
  GetJobArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataflow/v1b3:getJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobResult5.fromMap(result);
}
