import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ssl_certificate_compute_v1_args.dart';
import 'get_ssl_certificate_compute_v1_result.dart';

/// Returns the specified SslCertificate resource.
Future<GetSslCertificateComputeV1Result> getSslCertificateComputeV1(
  GetSslCertificateComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSslCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSslCertificateComputeV1Result.fromMap(result);
}
