import 'package:pulumi/pulumi.dart';
import 'get_model_deployment_monitoring_job_args.dart';
import 'get_model_deployment_monitoring_job_result.dart';

/// Gets a ModelDeploymentMonitoringJob.
Future<GetModelDeploymentMonitoringJobResult> getModelDeploymentMonitoringJob(
  GetModelDeploymentMonitoringJobArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getModelDeploymentMonitoringJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetModelDeploymentMonitoringJobResult.fromMap(result);
}
