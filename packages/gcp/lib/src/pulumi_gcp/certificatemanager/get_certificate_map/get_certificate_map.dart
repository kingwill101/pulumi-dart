import 'package:pulumi/pulumi.dart';
import 'get_certificate_map_args.dart';
import 'get_certificate_map_result.dart';

/// Get info about a Google Certificate Manager Certificate Map resource.
Future<GetCertificateMapResult> getCertificateMap(
  GetCertificateMapArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:certificatemanager/getCertificateMap:getCertificateMap',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateMapResult.fromMap(result);
}
