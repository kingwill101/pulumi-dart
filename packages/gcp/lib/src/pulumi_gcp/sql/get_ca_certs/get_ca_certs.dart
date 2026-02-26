import 'package:pulumi/pulumi.dart';
import 'get_ca_certs_args.dart';
import 'get_ca_certs_result.dart';

/// Get all of the trusted Certificate Authorities (CAs) for the specified SQL database instance. For more information see the
/// [official documentation](https://cloud.google.com/sql/)
/// and
/// [API](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1beta4/instances/listServerCas).
Future<GetCaCertsResult> getCaCerts(
  GetCaCertsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getCaCerts:getCaCerts',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCaCertsResult.fromMap(result);
}
