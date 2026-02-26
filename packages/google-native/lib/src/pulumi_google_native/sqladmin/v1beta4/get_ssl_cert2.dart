import 'package:pulumi/pulumi.dart';
import 'get_ssl_cert_args2.dart';
import 'get_ssl_cert_result2.dart';

/// Retrieves a particular SSL certificate. Does not include the private key (required for usage). The private key must be saved from the response to initial creation.
Future<GetSslCertResult2> getSslCert2(
  GetSslCertArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1beta4:getSslCert',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSslCertResult2.fromMap(result);
}
