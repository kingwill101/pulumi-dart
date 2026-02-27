import 'package:pulumi/pulumi.dart';
import 'get_image_pipeline_args.dart';
import 'get_image_pipeline_result.dart';

/// Provides details about an Image Builder Image Pipeline.
Future<GetImagePipelineResult> getImagePipeline(
  GetImagePipelineArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getImagePipeline:getImagePipeline',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImagePipelineResult.fromMap(result);
}
