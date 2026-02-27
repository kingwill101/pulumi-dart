import 'package:pulumi/pulumi.dart' hide Config;
import 'get_ssl_certificate_args2.dart';
import 'get_ssl_certificate_result2.dart';

/// Returns the specified SslCertificate resource.
Future<GetSslCertificateResult2> getSslCertificate2(
  GetSslCertificateArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSslCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSslCertificateResult2.fromMap(result);
}
