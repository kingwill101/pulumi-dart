import 'package:pulumi/pulumi.dart';
import 'get_pipeline_args2.dart';
import 'get_pipeline_result2.dart';

/// Retrieves a pipeline based on ID. Caller must have READ permission to the project.
Future<GetPipelineResult2> getPipeline2(
  GetPipelineArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:genomics/v1alpha2:getPipeline',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPipelineResult2.fromMap(result);
}
