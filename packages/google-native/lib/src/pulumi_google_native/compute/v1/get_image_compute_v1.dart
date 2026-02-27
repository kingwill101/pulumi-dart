import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_compute_v1_args.dart';
import 'get_image_compute_v1_result.dart';

/// Returns the specified image.
Future<GetImageComputeV1Result> getImageComputeV1(
  GetImageComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageComputeV1Result.fromMap(result);
}
