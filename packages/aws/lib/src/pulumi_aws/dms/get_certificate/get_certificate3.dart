import 'package:pulumi/pulumi.dart';
import 'get_certificate_args3.dart';
import 'get_certificate_result3.dart';

/// Data source for managing an AWS DMS (Database Migration) Certificate.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetCertificateResult3> getCertificate3(
  GetCertificateArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dms/getCertificate:getCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult3.fromMap(result);
}
