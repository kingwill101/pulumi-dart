import 'package:pulumi/pulumi.dart';
import 'get_hyperparameter_tuning_job_args2.dart';
import 'get_hyperparameter_tuning_job_result2.dart';

/// Gets a HyperparameterTuningJob
Future<GetHyperparameterTuningJobResult2> getHyperparameterTuningJob2(
  GetHyperparameterTuningJobArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getHyperparameterTuningJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHyperparameterTuningJobResult2.fromMap(result);
}
