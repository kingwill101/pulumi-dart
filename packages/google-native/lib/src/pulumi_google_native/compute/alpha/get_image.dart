import 'package:pulumi/pulumi.dart' hide Config;
import 'get_image_args.dart';
import 'get_image_result.dart';

/// Returns the specified image.
Future<GetImageResult> getImage(
  GetImageArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getImage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImageResult.fromMap(result);
}
