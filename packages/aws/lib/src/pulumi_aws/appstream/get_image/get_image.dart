import 'package:pulumi/pulumi.dart';
import 'get_image_args.dart';
import 'get_image_result.dart';

/// Data source for managing an AWS AppStream 2.0 Image.
Future<GetImageResult> getImage(
  GetImageArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appstream/getImage:getImage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImageResult.fromMap(result);
}
