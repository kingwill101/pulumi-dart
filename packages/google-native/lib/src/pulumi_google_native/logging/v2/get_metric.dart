import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metric_args.dart';
import 'get_metric_result.dart';

/// Gets a logs-based metric.
Future<GetMetricResult> getMetric(
  GetMetricArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:logging/v2:getMetric',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetricResult.fromMap(result);
}
