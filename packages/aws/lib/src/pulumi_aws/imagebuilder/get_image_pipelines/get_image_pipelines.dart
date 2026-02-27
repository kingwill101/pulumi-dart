import 'package:pulumi/pulumi.dart';
import 'get_image_pipelines_args.dart';
import 'get_image_pipelines_result.dart';

/// Use this data source to get the ARNs and names of Image Builder Image Pipelines matching the specified criteria.
Future<GetImagePipelinesResult> getImagePipelines(
  GetImagePipelinesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getImagePipelines:getImagePipelines',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImagePipelinesResult.fromMap(result);
}
