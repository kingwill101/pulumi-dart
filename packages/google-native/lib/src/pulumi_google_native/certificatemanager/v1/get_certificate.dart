import 'package:pulumi/pulumi.dart';
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';

/// Gets details of a single Certificate.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:certificatemanager/v1:getCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}
