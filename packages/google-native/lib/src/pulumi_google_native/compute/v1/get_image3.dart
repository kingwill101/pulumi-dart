import 'package:pulumi/pulumi.dart' hide Config;
import 'get_image_args3.dart';
import 'get_image_result3.dart';

/// Returns the specified image.
Future<GetImageResult3> getImage3(
  GetImageArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getImage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImageResult3.fromMap(result);
}
