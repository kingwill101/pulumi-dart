import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reference_image_args.dart';
import 'get_reference_image_result.dart';

/// Gets information associated with a ReferenceImage. Possible errors: * Returns NOT_FOUND if the specified image does not exist.
Future<GetReferenceImageResult> getReferenceImage(
  GetReferenceImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vision/v1:getReferenceImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReferenceImageResult.fromMap(result);
}
