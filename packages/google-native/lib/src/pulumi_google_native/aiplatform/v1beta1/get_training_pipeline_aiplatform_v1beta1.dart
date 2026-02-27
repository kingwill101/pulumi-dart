import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_training_pipeline_aiplatform_v1beta1_args.dart';
import 'get_training_pipeline_aiplatform_v1beta1_result.dart';

/// Gets a TrainingPipeline.
Future<GetTrainingPipelineAiplatformV1beta1Result>
    getTrainingPipelineAiplatformV1beta1(
  GetTrainingPipelineAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTrainingPipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrainingPipelineAiplatformV1beta1Result.fromMap(result);
}
