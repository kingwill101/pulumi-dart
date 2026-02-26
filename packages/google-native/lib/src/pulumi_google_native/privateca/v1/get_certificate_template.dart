import 'package:pulumi/pulumi.dart';
import 'get_certificate_template_args.dart';
import 'get_certificate_template_result.dart';

/// Returns a CertificateTemplate.
Future<GetCertificateTemplateResult> getCertificateTemplate(
  GetCertificateTemplateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1:getCertificateTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateTemplateResult.fromMap(result);
}
