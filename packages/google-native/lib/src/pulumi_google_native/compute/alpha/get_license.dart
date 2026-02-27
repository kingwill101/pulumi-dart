import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_license_args.dart';
import 'get_license_result.dart';

/// Returns the specified License resource. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
Future<GetLicenseResult> getLicense(
  GetLicenseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getLicense',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLicenseResult.fromMap(result);
}
