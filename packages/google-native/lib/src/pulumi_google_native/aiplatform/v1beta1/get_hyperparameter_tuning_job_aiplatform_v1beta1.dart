import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hyperparameter_tuning_job_aiplatform_v1beta1_args.dart';
import 'get_hyperparameter_tuning_job_aiplatform_v1beta1_result.dart';

/// Gets a HyperparameterTuningJob
Future<GetHyperparameterTuningJobAiplatformV1beta1Result>
    getHyperparameterTuningJobAiplatformV1beta1(
  GetHyperparameterTuningJobAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getHyperparameterTuningJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHyperparameterTuningJobAiplatformV1beta1Result.fromMap(result);
}
