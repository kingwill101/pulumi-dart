import 'package:pulumi/pulumi.dart' hide Config;
import 'get_experiment_args.dart';
import 'get_experiment_result.dart';

/// Gets a TensorboardExperiment.
Future<GetExperimentResult> getExperiment(
  GetExperimentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getExperiment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExperimentResult.fromMap(result);
}
