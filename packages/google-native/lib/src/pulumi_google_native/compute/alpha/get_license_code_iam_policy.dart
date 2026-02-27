import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_license_code_iam_policy_args.dart';
import 'get_license_code_iam_policy_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
Future<GetLicenseCodeIamPolicyResult> getLicenseCodeIamPolicy(
  GetLicenseCodeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getLicenseCodeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLicenseCodeIamPolicyResult.fromMap(result);
}
