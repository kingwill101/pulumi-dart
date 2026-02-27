import 'package:pulumi/pulumi.dart' hide Config;
import 'get_scan_config_args2.dart';
import 'get_scan_config_result2.dart';

/// Gets a ScanConfig.
Future<GetScanConfigResult2> getScanConfig2(
  GetScanConfigArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:websecurityscanner/v1alpha:getScanConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetScanConfigResult2.fromMap(result);
}
