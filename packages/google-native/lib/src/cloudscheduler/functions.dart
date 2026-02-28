import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_args.dart';
import 'get_job_cloudscheduler_v1beta1_args.dart';
import 'get_job_cloudscheduler_v1beta1_result.dart';
import 'get_job_result.dart';

/// Gets a job.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudscheduler_v1_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudscheduler/v1:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobResult.fromMap(result);
}

/// Gets a job.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudscheduler_v1beta1_get_job_cloudscheduler_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobCloudschedulerV1beta1Result> getJobCloudschedulerV1beta1(
  GetJobCloudschedulerV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudscheduler/v1beta1:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobCloudschedulerV1beta1Result.fromMap(result);
}
