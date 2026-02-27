import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scan_config_websecurityscanner_v1beta_args.dart';
import 'get_scan_config_websecurityscanner_v1beta_result.dart';

/// Gets a ScanConfig.
Future<GetScanConfigWebsecurityscannerV1betaResult>
    getScanConfigWebsecurityscannerV1beta(
  GetScanConfigWebsecurityscannerV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:websecurityscanner/v1beta:getScanConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScanConfigWebsecurityscannerV1betaResult.fromMap(result);
}
