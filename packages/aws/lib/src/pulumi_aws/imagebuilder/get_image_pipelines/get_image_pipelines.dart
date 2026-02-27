import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_pipelines_args.dart';
import 'get_image_pipelines_result.dart';

/// Use this data source to get the ARNs and names of Image Builder Image Pipelines matching the specified criteria.
Future<GetImagePipelinesResult> getImagePipelines(
  GetImagePipelinesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getImagePipelines:getImagePipelines',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImagePipelinesResult.fromMap(result);
}
