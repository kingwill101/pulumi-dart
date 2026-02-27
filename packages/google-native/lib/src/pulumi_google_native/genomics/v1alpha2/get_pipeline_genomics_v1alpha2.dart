import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_genomics_v1alpha2_args.dart';
import 'get_pipeline_genomics_v1alpha2_result.dart';

/// Retrieves a pipeline based on ID. Caller must have READ permission to the project.
Future<GetPipelineGenomicsV1alpha2Result> getPipelineGenomicsV1alpha2(
  GetPipelineGenomicsV1alpha2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:genomics/v1alpha2:getPipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPipelineGenomicsV1alpha2Result.fromMap(result);
}
