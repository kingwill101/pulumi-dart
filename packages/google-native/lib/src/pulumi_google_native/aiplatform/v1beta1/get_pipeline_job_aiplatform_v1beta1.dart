import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_job_aiplatform_v1beta1_args.dart';
import 'get_pipeline_job_aiplatform_v1beta1_result.dart';

/// Gets a PipelineJob.
Future<GetPipelineJobAiplatformV1beta1Result> getPipelineJobAiplatformV1beta1(
  GetPipelineJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getPipelineJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPipelineJobAiplatformV1beta1Result.fromMap(result);
}
