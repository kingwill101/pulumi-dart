import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_integrations_v1alpha_args.dart';
import 'get_certificate_integrations_v1alpha_result.dart';

/// Get a certificates in the specified project.
Future<GetCertificateIntegrationsV1alphaResult>
    getCertificateIntegrationsV1alpha(
  GetCertificateIntegrationsV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateIntegrationsV1alphaResult.fromMap(result);
}
