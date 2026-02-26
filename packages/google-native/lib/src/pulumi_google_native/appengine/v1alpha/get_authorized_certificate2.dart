import 'package:pulumi/pulumi.dart';
import 'get_authorized_certificate_args2.dart';
import 'get_authorized_certificate_result2.dart';

/// Gets the specified SSL certificate.
Future<GetAuthorizedCertificateResult2> getAuthorizedCertificate2(
  GetAuthorizedCertificateArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1alpha:getAuthorizedCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAuthorizedCertificateResult2.fromMap(result);
}
