import 'package:pulumi/pulumi.dart';
import 'get_pipeline_job_args2.dart';
import 'get_pipeline_job_result2.dart';

/// Gets a PipelineJob.
Future<GetPipelineJobResult2> getPipelineJob2(
  GetPipelineJobArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getPipelineJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPipelineJobResult2.fromMap(result);
}
