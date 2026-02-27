import 'package:pulumi/pulumi.dart';
import 'get_certificates_args.dart';
import 'get_certificates_result.dart';

/// List all certificates within Google Certificate Manager for a given project, region or filter.
///
/// ## Example Usage
///
///
///
/// ### With A Filter
///
///
///
/// ### Regional Certificates With A Filter
Future<GetCertificatesResult> getCertificates(
  GetCertificatesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:certificatemanager/getCertificates:getCertificates',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCertificatesResult.fromMap(result);
}
