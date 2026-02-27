import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_model_deployment_monitoring_job_args.dart';
import 'get_model_deployment_monitoring_job_result.dart';

/// Gets a ModelDeploymentMonitoringJob.
Future<GetModelDeploymentMonitoringJobResult> getModelDeploymentMonitoringJob(
  GetModelDeploymentMonitoringJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getModelDeploymentMonitoringJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelDeploymentMonitoringJobResult.fromMap(result);
}
