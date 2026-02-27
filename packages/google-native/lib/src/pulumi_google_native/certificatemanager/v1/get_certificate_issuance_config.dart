import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_issuance_config_args.dart';
import 'get_certificate_issuance_config_result.dart';

/// Gets details of a single CertificateIssuanceConfig.
Future<GetCertificateIssuanceConfigResult> getCertificateIssuanceConfig(
  GetCertificateIssuanceConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:certificatemanager/v1:getCertificateIssuanceConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateIssuanceConfigResult.fromMap(result);
}
