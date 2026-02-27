import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_dataproc_v1beta2_args.dart';
import 'get_job_dataproc_v1beta2_result.dart';

/// Gets the resource representation for a job in a project.
Future<GetJobDataprocV1beta2Result> getJobDataprocV1beta2(
  GetJobDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobDataprocV1beta2Result.fromMap(result);
}
