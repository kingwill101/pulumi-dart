import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_ecrpublic_args.dart';
import 'get_images_ecrpublic_result.dart';

/// The ECR Public Images data source allows the list of images in a specified public repository to be retrieved.
Future<GetImagesEcrpublicResult> getImagesEcrpublic(
  GetImagesEcrpublicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecrpublic/getImages:getImages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImagesEcrpublicResult.fromMap(result);
}
