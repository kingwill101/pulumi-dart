import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_authority_args.dart';
import 'get_certificate_authority_result.dart';

/// Returns a CertificateAuthority.
Future<GetCertificateAuthorityResult> getCertificateAuthority(
  GetCertificateAuthorityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1:getCertificateAuthority',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateAuthorityResult.fromMap(result);
}
