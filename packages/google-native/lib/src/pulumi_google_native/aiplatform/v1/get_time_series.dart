import 'package:pulumi/pulumi.dart';
import 'get_time_series_args.dart';
import 'get_time_series_result.dart';

/// Gets a TensorboardTimeSeries.
Future<GetTimeSeriesResult> getTimeSeries(
  GetTimeSeriesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTimeSeries',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTimeSeriesResult.fromMap(result);
}
