import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_experiment_dialogflow_v3beta1_args.dart';
import 'get_experiment_dialogflow_v3beta1_result.dart';

/// Retrieves the specified Experiment.
Future<GetExperimentDialogflowV3beta1Result> getExperimentDialogflowV3beta1(
  GetExperimentDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getExperiment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExperimentDialogflowV3beta1Result.fromMap(result);
}
