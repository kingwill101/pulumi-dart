import 'package:pulumi/pulumi.dart';
import 'get_pipeline_definition_args.dart';
import 'get_pipeline_definition_result.dart';

/// Provides details about a specific DataPipeline Pipeline Definition.
Future<GetPipelineDefinitionResult> getPipelineDefinition(
  GetPipelineDefinitionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:datapipeline/getPipelineDefinition:getPipelineDefinition',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPipelineDefinitionResult.fromMap(result);
}
