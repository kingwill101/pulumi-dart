import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_license_compute_beta_args.dart';
import 'get_license_compute_beta_result.dart';

/// Returns the specified License resource. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
Future<GetLicenseComputeBetaResult> getLicenseComputeBeta(
  GetLicenseComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getLicense',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLicenseComputeBetaResult.fromMap(result);
}
