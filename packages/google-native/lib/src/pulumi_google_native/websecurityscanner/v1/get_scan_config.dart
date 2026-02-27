import 'package:pulumi/pulumi.dart' hide Config;
import 'get_scan_config_args.dart';
import 'get_scan_config_result.dart';

/// Gets a ScanConfig.
Future<GetScanConfigResult> getScanConfig(
  GetScanConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:websecurityscanner/v1:getScanConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetScanConfigResult.fromMap(result);
}
