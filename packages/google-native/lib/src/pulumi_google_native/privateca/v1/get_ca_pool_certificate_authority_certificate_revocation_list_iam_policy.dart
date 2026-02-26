import 'package:pulumi/pulumi.dart';
import 'get_ca_pool_certificate_authority_certificate_revocation_list_iam_policy_args.dart';
import 'get_ca_pool_certificate_authority_certificate_revocation_list_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyResult>
    getCaPoolCertificateAuthorityCertificateRevocationListIamPolicy(
  GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1:getCaPoolCertificateAuthorityCertificateRevocationListIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyResult
      .fromMap(result);
}
