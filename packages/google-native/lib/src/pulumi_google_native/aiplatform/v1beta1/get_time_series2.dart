import 'package:pulumi/pulumi.dart' hide Config;
import 'get_time_series_args2.dart';
import 'get_time_series_result2.dart';

/// Gets a TensorboardTimeSeries.
Future<GetTimeSeriesResult2> getTimeSeries2(
  GetTimeSeriesArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTimeSeries',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTimeSeriesResult2.fromMap(result);
}
