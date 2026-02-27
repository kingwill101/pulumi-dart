import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_job_args.dart';
import 'get_pipeline_job_result.dart';

/// Gets a PipelineJob.
Future<GetPipelineJobResult> getPipelineJob(
  GetPipelineJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getPipelineJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPipelineJobResult.fromMap(result);
}
