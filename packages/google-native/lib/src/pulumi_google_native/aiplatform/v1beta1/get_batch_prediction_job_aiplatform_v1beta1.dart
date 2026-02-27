import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_batch_prediction_job_aiplatform_v1beta1_args.dart';
import 'get_batch_prediction_job_aiplatform_v1beta1_result.dart';

/// Gets a BatchPredictionJob
Future<GetBatchPredictionJobAiplatformV1beta1Result>
    getBatchPredictionJobAiplatformV1beta1(
  GetBatchPredictionJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getBatchPredictionJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBatchPredictionJobAiplatformV1beta1Result.fromMap(result);
}
