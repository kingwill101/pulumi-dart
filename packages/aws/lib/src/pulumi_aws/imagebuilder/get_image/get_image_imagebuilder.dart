import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_imagebuilder_args.dart';
import 'get_image_imagebuilder_result.dart';

/// Provides details about an Image Builder Image.
///
/// ## Example Usage
///
/// ### Latest
Future<GetImageImagebuilderResult> getImageImagebuilder(
  GetImageImagebuilderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getImage:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageImagebuilderResult.fromMap(result);
}
