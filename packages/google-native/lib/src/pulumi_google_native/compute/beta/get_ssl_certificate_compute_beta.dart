import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ssl_certificate_compute_beta_args.dart';
import 'get_ssl_certificate_compute_beta_result.dart';

/// Returns the specified SslCertificate resource.
Future<GetSslCertificateComputeBetaResult> getSslCertificateComputeBeta(
  GetSslCertificateComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSslCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSslCertificateComputeBetaResult.fromMap(result);
}
