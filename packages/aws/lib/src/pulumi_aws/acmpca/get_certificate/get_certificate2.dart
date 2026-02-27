import 'package:pulumi/pulumi.dart';
import 'get_certificate_args2.dart';
import 'get_certificate_result2.dart';

/// Get information on a Certificate issued by a AWS Certificate Manager Private Certificate Authority.
Future<GetCertificateResult2> getCertificate2(
  GetCertificateArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:acmpca/getCertificate:getCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult2.fromMap(result);
}
