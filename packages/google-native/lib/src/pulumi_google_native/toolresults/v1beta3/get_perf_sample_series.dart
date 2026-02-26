import 'package:pulumi/pulumi.dart';
import 'get_perf_sample_series_args.dart';
import 'get_perf_sample_series_result.dart';

/// Gets a PerfSampleSeries. May return any of the following error code(s): - NOT_FOUND - The specified PerfSampleSeries does not exist
Future<GetPerfSampleSeriesResult> getPerfSampleSeries(
  GetPerfSampleSeriesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:toolresults/v1beta3:getPerfSampleSeries',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPerfSampleSeriesResult.fromMap(result);
}
