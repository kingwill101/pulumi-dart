import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_ssl_certificate_compute_beta_args.dart';
import 'get_region_ssl_certificate_compute_beta_result.dart';

/// Returns the specified SslCertificate resource in the specified region. Get a list of available SSL certificates by making a list() request.
Future<GetRegionSslCertificateComputeBetaResult>
    getRegionSslCertificateComputeBeta(
  GetRegionSslCertificateComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionSslCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSslCertificateComputeBetaResult.fromMap(result);
}
