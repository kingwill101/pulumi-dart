import 'package:pulumi/pulumi.dart';
import 'get_batch_prediction_job_args2.dart';
import 'get_batch_prediction_job_result2.dart';

/// Gets a BatchPredictionJob
Future<GetBatchPredictionJobResult2> getBatchPredictionJob2(
  GetBatchPredictionJobArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getBatchPredictionJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBatchPredictionJobResult2.fromMap(result);
}
