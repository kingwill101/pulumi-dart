import 'package:pulumi/pulumi.dart';
import 'get_pipeline_args.dart';
import 'get_pipeline_result.dart';

/// Provides details about a specific DataPipeline Pipeline.
Future<GetPipelineResult> getPipeline(
  GetPipelineArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:datapipeline/getPipeline:getPipeline',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPipelineResult.fromMap(result);
}
