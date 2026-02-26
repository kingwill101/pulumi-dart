import 'package:pulumi/pulumi.dart';
import 'get_license_iam_policy_args2.dart';
import 'get_license_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
Future<GetLicenseIamPolicyResult2> getLicenseIamPolicy2(
  GetLicenseIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getLicenseIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLicenseIamPolicyResult2.fromMap(result);
}
