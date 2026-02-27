import 'package:pulumi/pulumi.dart' hide Config;
import 'get_experiment_args3.dart';
import 'get_experiment_result3.dart';

/// Retrieves the specified Experiment.
Future<GetExperimentResult3> getExperiment3(
  GetExperimentArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getExperiment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExperimentResult3.fromMap(result);
}
