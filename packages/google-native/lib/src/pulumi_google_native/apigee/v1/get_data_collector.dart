import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_collector_args.dart';
import 'get_data_collector_result.dart';

/// Gets a data collector.
Future<GetDataCollectorResult> getDataCollector(
  GetDataCollectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDataCollector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataCollectorResult.fromMap(result);
}
