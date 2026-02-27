import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_license_compute_v1_args.dart';
import 'get_license_compute_v1_result.dart';

/// Returns the specified License resource. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
Future<GetLicenseComputeV1Result> getLicenseComputeV1(
  GetLicenseComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getLicense',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLicenseComputeV1Result.fromMap(result);
}
