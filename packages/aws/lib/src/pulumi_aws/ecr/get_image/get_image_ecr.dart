import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_ecr_args.dart';
import 'get_image_ecr_result.dart';

/// The ECR Image data source allows the details of an image with a particular tag or digest to be retrieved.
Future<GetImageEcrResult> getImageEcr(
  GetImageEcrArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getImage:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageEcrResult.fromMap(result);
}
