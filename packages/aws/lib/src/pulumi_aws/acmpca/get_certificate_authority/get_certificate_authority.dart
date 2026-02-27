import 'package:pulumi/pulumi.dart';
import 'get_certificate_authority_args.dart';
import 'get_certificate_authority_result.dart';

/// Get information on a AWS Certificate Manager Private Certificate Authority (ACM PCA Certificate Authority).
Future<GetCertificateAuthorityResult> getCertificateAuthority(
  GetCertificateAuthorityArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:acmpca/getCertificateAuthority:getCertificateAuthority',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateAuthorityResult.fromMap(result);
}
