import 'package:pulumi/pulumi.dart';
import 'get_images_args2.dart';
import 'get_images_result2.dart';

/// The ECR Public Images data source allows the list of images in a specified public repository to be retrieved.
Future<GetImagesResult2> getImages2(
  GetImagesArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecrpublic/getImages:getImages',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImagesResult2.fromMap(result);
}
