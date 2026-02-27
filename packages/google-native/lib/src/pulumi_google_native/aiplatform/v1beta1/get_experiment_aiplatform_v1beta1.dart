import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_experiment_aiplatform_v1beta1_args.dart';
import 'get_experiment_aiplatform_v1beta1_result.dart';

/// Gets a TensorboardExperiment.
Future<GetExperimentAiplatformV1beta1Result> getExperimentAiplatformV1beta1(
  GetExperimentAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getExperiment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExperimentAiplatformV1beta1Result.fromMap(result);
}
