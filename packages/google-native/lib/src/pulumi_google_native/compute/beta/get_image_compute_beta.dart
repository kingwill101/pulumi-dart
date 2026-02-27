import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_compute_beta_args.dart';
import 'get_image_compute_beta_result.dart';

/// Returns the specified image.
Future<GetImageComputeBetaResult> getImageComputeBeta(
  GetImageComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageComputeBetaResult.fromMap(result);
}
