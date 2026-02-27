import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ssl_cert_sqladmin_v1beta4_args.dart';
import 'get_ssl_cert_sqladmin_v1beta4_result.dart';

/// Retrieves a particular SSL certificate. Does not include the private key (required for usage). The private key must be saved from the response to initial creation.
Future<GetSslCertSqladminV1beta4Result> getSslCertSqladminV1beta4(
  GetSslCertSqladminV1beta4Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:sqladmin/v1beta4:getSslCert',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSslCertSqladminV1beta4Result.fromMap(result);
}
