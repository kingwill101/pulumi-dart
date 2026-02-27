import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_dataproc_v1_args.dart';
import 'get_job_dataproc_v1_result.dart';

/// Gets the resource representation for a job in a project.
Future<GetJobDataprocV1Result> getJobDataprocV1(
  GetJobDataprocV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobDataprocV1Result.fromMap(result);
}
