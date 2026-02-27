import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_map_args.dart';
import 'get_certificate_map_result.dart';

/// Gets details of a single CertificateMap.
Future<GetCertificateMapResult> getCertificateMap(
  GetCertificateMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:certificatemanager/v1:getCertificateMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateMapResult.fromMap(result);
}
