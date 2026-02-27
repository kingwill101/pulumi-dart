import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_ssl_certificate_args2.dart';
import 'get_region_ssl_certificate_result2.dart';

/// Returns the specified SslCertificate resource in the specified region. Get a list of available SSL certificates by making a list() request.
Future<GetRegionSslCertificateResult2> getRegionSslCertificate2(
  GetRegionSslCertificateArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionSslCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionSslCertificateResult2.fromMap(result);
}
