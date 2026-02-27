import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_acmpca_args.dart';
import 'get_certificate_acmpca_result.dart';

/// Get information on a Certificate issued by a AWS Certificate Manager Private Certificate Authority.
Future<GetCertificateAcmpcaResult> getCertificateAcmpca(
  GetCertificateAcmpcaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:acmpca/getCertificate:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateAcmpcaResult.fromMap(result);
}
