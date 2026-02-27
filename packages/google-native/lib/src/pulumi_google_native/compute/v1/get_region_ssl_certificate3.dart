import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_ssl_certificate_args3.dart';
import 'get_region_ssl_certificate_result3.dart';

/// Returns the specified SslCertificate resource in the specified region. Get a list of available SSL certificates by making a list() request.
Future<GetRegionSslCertificateResult3> getRegionSslCertificate3(
  GetRegionSslCertificateArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionSslCertificate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionSslCertificateResult3.fromMap(result);
}
