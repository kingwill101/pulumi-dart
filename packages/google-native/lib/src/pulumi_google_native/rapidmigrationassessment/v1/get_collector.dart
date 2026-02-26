import 'package:pulumi/pulumi.dart';
import 'get_collector_args.dart';
import 'get_collector_result.dart';

/// Gets details of a single Collector.
Future<GetCollectorResult> getCollector(
  GetCollectorArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:rapidmigrationassessment/v1:getCollector',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCollectorResult.fromMap(result);
}
