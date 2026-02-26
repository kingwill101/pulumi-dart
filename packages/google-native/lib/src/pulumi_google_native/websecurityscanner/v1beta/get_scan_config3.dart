import 'package:pulumi/pulumi.dart';
import 'get_scan_config_args3.dart';
import 'get_scan_config_result3.dart';

/// Gets a ScanConfig.
Future<GetScanConfigResult3> getScanConfig3(
  GetScanConfigArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:websecurityscanner/v1beta:getScanConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetScanConfigResult3.fromMap(result);
}
