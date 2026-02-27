import 'package:pulumi/pulumi.dart';
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';

/// Get info about a Google Compute SSL Certificate from its name.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getCertificate:getCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}
