import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_dms_args.dart';
import 'get_certificate_dms_result.dart';

/// Data source for managing an AWS DMS (Database Migration) Certificate.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetCertificateDmsResult> getCertificateDms(
  GetCertificateDmsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dms/getCertificate:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateDmsResult.fromMap(result);
}
