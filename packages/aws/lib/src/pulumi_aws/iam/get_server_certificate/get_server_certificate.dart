import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_certificate_args.dart';
import 'get_server_certificate_result.dart';

/// Use this data source to lookup information about IAM Server Certificates.
Future<GetServerCertificateResult> getServerCertificate(
  GetServerCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getServerCertificate:getServerCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerCertificateResult.fromMap(result);
}
