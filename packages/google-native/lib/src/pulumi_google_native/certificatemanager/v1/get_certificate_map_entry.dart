import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_map_entry_args.dart';
import 'get_certificate_map_entry_result.dart';

/// Gets details of a single CertificateMapEntry.
Future<GetCertificateMapEntryResult> getCertificateMapEntry(
  GetCertificateMapEntryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:certificatemanager/v1:getCertificateMapEntry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateMapEntryResult.fromMap(result);
}
