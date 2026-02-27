import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_batch_prediction_job_args.dart';
import 'get_batch_prediction_job_result.dart';

/// Gets a BatchPredictionJob
Future<GetBatchPredictionJobResult> getBatchPredictionJob(
  GetBatchPredictionJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getBatchPredictionJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBatchPredictionJobResult.fromMap(result);
}
