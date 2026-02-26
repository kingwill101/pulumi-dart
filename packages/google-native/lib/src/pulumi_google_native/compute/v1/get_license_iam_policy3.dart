import 'package:pulumi/pulumi.dart';
import 'get_license_iam_policy_args3.dart';
import 'get_license_iam_policy_result3.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
Future<GetLicenseIamPolicyResult3> getLicenseIamPolicy3(
  GetLicenseIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getLicenseIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLicenseIamPolicyResult3.fromMap(result);
}
