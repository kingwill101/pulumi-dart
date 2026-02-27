import 'package:pulumi/pulumi.dart';
import 'get_certificate_args4.dart';
import 'get_certificate_result4.dart';

/// Information about an RDS Certificate.
Future<GetCertificateResult4> getCertificate4(
  GetCertificateArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getCertificate:getCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult4.fromMap(result);
}
