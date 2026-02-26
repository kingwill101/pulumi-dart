import 'package:pulumi/pulumi.dart';
import 'get_model_deployment_monitoring_job_args2.dart';
import 'get_model_deployment_monitoring_job_result2.dart';

/// Gets a ModelDeploymentMonitoringJob.
Future<GetModelDeploymentMonitoringJobResult2> getModelDeploymentMonitoringJob2(
  GetModelDeploymentMonitoringJobArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getModelDeploymentMonitoringJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetModelDeploymentMonitoringJobResult2.fromMap(result);
}
