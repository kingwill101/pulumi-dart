import 'package:pulumi/pulumi.dart' hide Config;
import 'get_ssl_certificate_args3.dart';
import 'get_ssl_certificate_result3.dart';

/// Returns the specified SslCertificate resource.
Future<GetSslCertificateResult3> getSslCertificate3(
  GetSslCertificateArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSslCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSslCertificateResult3.fromMap(result);
}
