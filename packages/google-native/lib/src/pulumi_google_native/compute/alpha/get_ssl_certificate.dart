import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ssl_certificate_args.dart';
import 'get_ssl_certificate_result.dart';

/// Returns the specified SslCertificate resource.
Future<GetSslCertificateResult> getSslCertificate(
  GetSslCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getSslCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSslCertificateResult.fromMap(result);
}
