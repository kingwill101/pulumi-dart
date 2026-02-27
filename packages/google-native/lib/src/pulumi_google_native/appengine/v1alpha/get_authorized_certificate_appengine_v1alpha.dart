import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authorized_certificate_appengine_v1alpha_args.dart';
import 'get_authorized_certificate_appengine_v1alpha_result.dart';

/// Gets the specified SSL certificate.
Future<GetAuthorizedCertificateAppengineV1alphaResult>
    getAuthorizedCertificateAppengineV1alpha(
  GetAuthorizedCertificateAppengineV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1alpha:getAuthorizedCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizedCertificateAppengineV1alphaResult.fromMap(result);
}
