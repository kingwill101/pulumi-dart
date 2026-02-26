import 'package:pulumi/pulumi.dart';
import 'get_certificate_args2.dart';
import 'get_certificate_result2.dart';

/// Get a certificates in the specified project.
Future<GetCertificateResult2> getCertificate2(
  GetCertificateArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult2.fromMap(result);
}
