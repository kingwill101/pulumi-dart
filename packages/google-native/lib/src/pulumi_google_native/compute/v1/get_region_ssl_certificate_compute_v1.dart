import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_ssl_certificate_compute_v1_args.dart';
import 'get_region_ssl_certificate_compute_v1_result.dart';

/// Returns the specified SslCertificate resource in the specified region. Get a list of available SSL certificates by making a list() request.
Future<GetRegionSslCertificateComputeV1Result> getRegionSslCertificateComputeV1(
  GetRegionSslCertificateComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionSslCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSslCertificateComputeV1Result.fromMap(result);
}
