import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_ssl_certificate_args.dart';
import 'get_region_ssl_certificate_result.dart';

/// Returns the specified SslCertificate resource in the specified region. Get a list of available SSL certificates by making a list() request.
Future<GetRegionSslCertificateResult> getRegionSslCertificate(
  GetRegionSslCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionSslCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSslCertificateResult.fromMap(result);
}
