import 'package:pulumi/pulumi.dart';
import 'get_image_args3.dart';
import 'get_image_result3.dart';

/// Provides details about an Image Builder Image.
///
/// ## Example Usage
///
/// ### Latest
Future<GetImageResult3> getImage3(
  GetImageArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getImage:getImage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImageResult3.fromMap(result);
}
