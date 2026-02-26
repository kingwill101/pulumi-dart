import 'package:pulumi/pulumi.dart';
import 'get_experiment_args2.dart';
import 'get_experiment_result2.dart';

/// Gets a TensorboardExperiment.
Future<GetExperimentResult2> getExperiment2(
  GetExperimentArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getExperiment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExperimentResult2.fromMap(result);
}
