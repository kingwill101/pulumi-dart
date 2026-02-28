import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_args.dart';
import 'get_pipeline_result.dart';

/// Retrieves a pipeline based on ID. Caller must have READ permission to the project.
/// [args] Arguments passed to this invoke. {@macro pulumi_genomics_v1alpha2_get_pipeline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPipelineResult> getPipeline(
  GetPipelineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:genomics/v1alpha2:getPipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPipelineResult.fromMap(result);
}
