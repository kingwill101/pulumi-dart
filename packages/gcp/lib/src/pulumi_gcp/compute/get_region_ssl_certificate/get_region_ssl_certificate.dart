import 'package:pulumi/pulumi.dart';
import 'get_region_ssl_certificate_args.dart';
import 'get_region_ssl_certificate_result.dart';

/// Get info about a Region Google Compute SSL Certificate from its name.
Future<GetRegionSslCertificateResult> getRegionSslCertificate(
  GetRegionSslCertificateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionSslCertificate:getRegionSslCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionSslCertificateResult.fromMap(result);
}
