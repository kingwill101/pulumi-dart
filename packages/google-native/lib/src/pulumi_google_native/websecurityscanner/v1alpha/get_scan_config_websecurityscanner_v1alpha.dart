import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scan_config_websecurityscanner_v1alpha_args.dart';
import 'get_scan_config_websecurityscanner_v1alpha_result.dart';

/// Gets a ScanConfig.
Future<GetScanConfigWebsecurityscannerV1alphaResult>
    getScanConfigWebsecurityscannerV1alpha(
  GetScanConfigWebsecurityscannerV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:websecurityscanner/v1alpha:getScanConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScanConfigWebsecurityscannerV1alphaResult.fromMap(result);
}
