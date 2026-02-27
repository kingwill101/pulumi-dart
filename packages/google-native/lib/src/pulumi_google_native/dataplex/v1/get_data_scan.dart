import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_scan_args.dart';
import 'get_data_scan_result.dart';

/// Gets a DataScan resource.
Future<GetDataScanResult> getDataScan(
  GetDataScanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getDataScan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataScanResult.fromMap(result);
}
