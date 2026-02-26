import 'package:pulumi/pulumi.dart';
import 'get_ssl_certificate_args.dart';
import 'get_ssl_certificate_result.dart';

/// Returns the specified SslCertificate resource.
Future<GetSslCertificateResult> getSslCertificate(
  GetSslCertificateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getSslCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSslCertificateResult.fromMap(result);
}
