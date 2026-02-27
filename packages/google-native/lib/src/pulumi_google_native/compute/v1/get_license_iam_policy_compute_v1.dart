import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_license_iam_policy_compute_v1_args.dart';
import 'get_license_iam_policy_compute_v1_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
Future<GetLicenseIamPolicyComputeV1Result> getLicenseIamPolicyComputeV1(
  GetLicenseIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getLicenseIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLicenseIamPolicyComputeV1Result.fromMap(result);
}
