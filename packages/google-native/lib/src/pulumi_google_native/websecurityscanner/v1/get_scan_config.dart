import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scan_config_args.dart';
import 'get_scan_config_result.dart';

/// Gets a ScanConfig.
Future<GetScanConfigResult> getScanConfig(
  GetScanConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:websecurityscanner/v1:getScanConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScanConfigResult.fromMap(result);
}
