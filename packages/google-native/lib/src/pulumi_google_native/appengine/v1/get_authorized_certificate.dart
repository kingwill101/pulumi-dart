import 'package:pulumi/pulumi.dart';
import 'get_authorized_certificate_args.dart';
import 'get_authorized_certificate_result.dart';

/// Gets the specified SSL certificate.
Future<GetAuthorizedCertificateResult> getAuthorizedCertificate(
  GetAuthorizedCertificateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1:getAuthorizedCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAuthorizedCertificateResult.fromMap(result);
}
