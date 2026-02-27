import 'package:pulumi/pulumi.dart' hide Config;
import 'get_pipeline_job_args.dart';
import 'get_pipeline_job_result.dart';

/// Gets a PipelineJob.
Future<GetPipelineJobResult> getPipelineJob(
  GetPipelineJobArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getPipelineJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPipelineJobResult.fromMap(result);
}
