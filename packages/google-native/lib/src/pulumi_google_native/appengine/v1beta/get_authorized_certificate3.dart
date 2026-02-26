import 'package:pulumi/pulumi.dart';
import 'get_authorized_certificate_args3.dart';
import 'get_authorized_certificate_result3.dart';

/// Gets the specified SSL certificate.
Future<GetAuthorizedCertificateResult3> getAuthorizedCertificate3(
  GetAuthorizedCertificateArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getAuthorizedCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAuthorizedCertificateResult3.fromMap(result);
}
