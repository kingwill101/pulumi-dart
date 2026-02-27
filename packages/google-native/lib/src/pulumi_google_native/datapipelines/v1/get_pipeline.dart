import 'package:pulumi/pulumi.dart' hide Config;
import 'get_pipeline_args.dart';
import 'get_pipeline_result.dart';

/// Looks up a single pipeline. Returns a "NOT_FOUND" error if no such pipeline exists. Returns a "FORBIDDEN" error if the caller doesn't have permission to access it.
Future<GetPipelineResult> getPipeline(
  GetPipelineArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datapipelines/v1:getPipeline',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPipelineResult.fromMap(result);
}
