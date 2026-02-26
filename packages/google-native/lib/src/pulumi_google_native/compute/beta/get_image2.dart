import 'package:pulumi/pulumi.dart';
import 'get_image_args2.dart';
import 'get_image_result2.dart';

/// Returns the specified image.
Future<GetImageResult2> getImage2(
  GetImageArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getImage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImageResult2.fromMap(result);
}
