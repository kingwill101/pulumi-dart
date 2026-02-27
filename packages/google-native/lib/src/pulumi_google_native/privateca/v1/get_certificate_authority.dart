import 'package:pulumi/pulumi.dart' hide Config;
import 'get_certificate_authority_args.dart';
import 'get_certificate_authority_result.dart';

/// Returns a CertificateAuthority.
Future<GetCertificateAuthorityResult> getCertificateAuthority(
  GetCertificateAuthorityArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1:getCertificateAuthority',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateAuthorityResult.fromMap(result);
}
