import 'package:pulumi/pulumi.dart' hide Config;
import 'get_certificate_args3.dart';
import 'get_certificate_result3.dart';

/// Returns a Certificate.
Future<GetCertificateResult3> getCertificate3(
  GetCertificateArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1:getCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult3.fromMap(result);
}
