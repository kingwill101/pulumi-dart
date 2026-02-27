import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_model_deployment_monitoring_job_aiplatform_v1beta1_args.dart';
import 'get_model_deployment_monitoring_job_aiplatform_v1beta1_result.dart';

/// Gets a ModelDeploymentMonitoringJob.
Future<GetModelDeploymentMonitoringJobAiplatformV1beta1Result>
    getModelDeploymentMonitoringJobAiplatformV1beta1(
  GetModelDeploymentMonitoringJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getModelDeploymentMonitoringJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelDeploymentMonitoringJobAiplatformV1beta1Result.fromMap(result);
}
