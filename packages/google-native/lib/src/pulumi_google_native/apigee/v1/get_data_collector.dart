import 'package:pulumi/pulumi.dart' hide Config;
import 'get_data_collector_args.dart';
import 'get_data_collector_result.dart';

/// Gets a data collector.
Future<GetDataCollectorResult> getDataCollector(
  GetDataCollectorArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDataCollector',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataCollectorResult.fromMap(result);
}
