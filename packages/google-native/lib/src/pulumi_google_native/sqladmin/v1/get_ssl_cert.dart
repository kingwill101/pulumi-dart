import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ssl_cert_args.dart';
import 'get_ssl_cert_result.dart';

/// Retrieves a particular SSL certificate. Does not include the private key (required for usage). The private key must be saved from the response to initial creation.
Future<GetSslCertResult> getSslCert(
  GetSslCertArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1:getSslCert',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSslCertResult.fromMap(result);
}
