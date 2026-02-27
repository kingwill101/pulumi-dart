import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authorized_certificate_appengine_v1beta_args.dart';
import 'get_authorized_certificate_appengine_v1beta_result.dart';

/// Gets the specified SSL certificate.
Future<GetAuthorizedCertificateAppengineV1betaResult>
    getAuthorizedCertificateAppengineV1beta(
  GetAuthorizedCertificateAppengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getAuthorizedCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizedCertificateAppengineV1betaResult.fromMap(result);
}
