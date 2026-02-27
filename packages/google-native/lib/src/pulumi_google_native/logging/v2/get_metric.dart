import 'package:pulumi/pulumi.dart' hide Config;
import 'get_metric_args.dart';
import 'get_metric_result.dart';

/// Gets a logs-based metric.
Future<GetMetricResult> getMetric(
  GetMetricArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getMetric',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMetricResult.fromMap(result);
}
