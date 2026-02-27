import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_cloudscheduler_v1_args.dart';
import 'get_job_cloudscheduler_v1_result.dart';

/// Gets a job.
Future<GetJobCloudschedulerV1Result> getJobCloudschedulerV1(
  GetJobCloudschedulerV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudscheduler/v1:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobCloudschedulerV1Result.fromMap(result);
}
