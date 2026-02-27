import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_training_pipeline_args.dart';
import 'get_training_pipeline_result.dart';

/// Gets a TrainingPipeline.
Future<GetTrainingPipelineResult> getTrainingPipeline(
  GetTrainingPipelineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getTrainingPipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrainingPipelineResult.fromMap(result);
}
