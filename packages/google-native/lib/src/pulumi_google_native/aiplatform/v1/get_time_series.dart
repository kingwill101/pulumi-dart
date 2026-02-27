import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_time_series_args.dart';
import 'get_time_series_result.dart';

/// Gets a TensorboardTimeSeries.
Future<GetTimeSeriesResult> getTimeSeries(
  GetTimeSeriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTimeSeries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTimeSeriesResult.fromMap(result);
}
