import 'package:pulumi/pulumi.dart' hide Config;
import 'get_hyperparameter_tuning_job_args.dart';
import 'get_hyperparameter_tuning_job_result.dart';

/// Gets a HyperparameterTuningJob
Future<GetHyperparameterTuningJobResult> getHyperparameterTuningJob(
  GetHyperparameterTuningJobArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getHyperparameterTuningJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHyperparameterTuningJobResult.fromMap(result);
}
