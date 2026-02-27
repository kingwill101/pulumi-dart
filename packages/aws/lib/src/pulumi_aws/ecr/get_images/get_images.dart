import 'package:pulumi/pulumi.dart';
import 'get_images_args.dart';
import 'get_images_result.dart';

/// The ECR Images data source allows the list of images in a specified repository to be retrieved.
Future<GetImagesResult> getImages(
  GetImagesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getImages:getImages',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImagesResult.fromMap(result);
}
