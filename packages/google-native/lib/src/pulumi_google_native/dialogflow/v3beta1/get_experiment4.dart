import 'package:pulumi/pulumi.dart';
import 'get_experiment_args4.dart';
import 'get_experiment_result4.dart';

/// Retrieves the specified Experiment.
Future<GetExperimentResult4> getExperiment4(
  GetExperimentArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getExperiment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExperimentResult4.fromMap(result);
}
