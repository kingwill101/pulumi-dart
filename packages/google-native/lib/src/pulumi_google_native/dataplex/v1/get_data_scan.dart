import 'package:pulumi/pulumi.dart' hide Config;
import 'get_data_scan_args.dart';
import 'get_data_scan_result.dart';

/// Gets a DataScan resource.
Future<GetDataScanResult> getDataScan(
  GetDataScanArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataScan',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataScanResult.fromMap(result);
}
