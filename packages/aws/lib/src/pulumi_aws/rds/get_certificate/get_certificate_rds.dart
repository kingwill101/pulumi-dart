import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_rds_args.dart';
import 'get_certificate_rds_result.dart';

/// Information about an RDS Certificate.
Future<GetCertificateRdsResult> getCertificateRds(
  GetCertificateRdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getCertificate:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateRdsResult.fromMap(result);
}
