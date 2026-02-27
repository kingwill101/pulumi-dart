import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_time_series_aiplatform_v1beta1_args.dart';
import 'get_time_series_aiplatform_v1beta1_result.dart';

/// Gets a TensorboardTimeSeries.
Future<GetTimeSeriesAiplatformV1beta1Result> getTimeSeriesAiplatformV1beta1(
  GetTimeSeriesAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTimeSeries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTimeSeriesAiplatformV1beta1Result.fromMap(result);
}
