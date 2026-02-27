import 'package:pulumi/pulumi.dart' hide Config;
import 'get_certificate_authority_iam_policy_args.dart';
import 'get_certificate_authority_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetCertificateAuthorityIamPolicyResult> getCertificateAuthorityIamPolicy(
  GetCertificateAuthorityIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1beta1:getCertificateAuthorityIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateAuthorityIamPolicyResult.fromMap(result);
}
