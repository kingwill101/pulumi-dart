import 'package:pulumi/pulumi.dart';
import 'get_image_args2.dart';
import 'get_image_result2.dart';

/// The ECR Image data source allows the details of an image with a particular tag or digest to be retrieved.
Future<GetImageResult2> getImage2(
  GetImageArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getImage:getImage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImageResult2.fromMap(result);
}
