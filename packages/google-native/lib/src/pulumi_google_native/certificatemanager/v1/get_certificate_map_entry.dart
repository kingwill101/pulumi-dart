import 'package:pulumi/pulumi.dart';
import 'get_certificate_map_entry_args.dart';
import 'get_certificate_map_entry_result.dart';

/// Gets details of a single CertificateMapEntry.
Future<GetCertificateMapEntryResult> getCertificateMapEntry(
  GetCertificateMapEntryArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:certificatemanager/v1:getCertificateMapEntry',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificateMapEntryResult.fromMap(result);
}
