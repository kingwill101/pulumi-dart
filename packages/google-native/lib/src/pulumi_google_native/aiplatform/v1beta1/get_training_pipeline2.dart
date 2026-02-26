import 'package:pulumi/pulumi.dart';
import 'get_training_pipeline_args2.dart';
import 'get_training_pipeline_result2.dart';

/// Gets a TrainingPipeline.
Future<GetTrainingPipelineResult2> getTrainingPipeline2(
  GetTrainingPipelineArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getTrainingPipeline',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTrainingPipelineResult2.fromMap(result);
}
