import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_authority_certificate_revocation_list_iam_policy_args.dart';
import 'get_certificate_authority_certificate_revocation_list_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetCertificateAuthorityCertificateRevocationListIamPolicyResult>
    getCertificateAuthorityCertificateRevocationListIamPolicy(
  GetCertificateAuthorityCertificateRevocationListIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1beta1:getCertificateAuthorityCertificateRevocationListIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateAuthorityCertificateRevocationListIamPolicyResult
      .fromMap(result);
}
