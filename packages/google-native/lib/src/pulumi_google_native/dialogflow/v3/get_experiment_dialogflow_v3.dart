import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_experiment_dialogflow_v3_args.dart';
import 'get_experiment_dialogflow_v3_result.dart';

/// Retrieves the specified Experiment.
Future<GetExperimentDialogflowV3Result> getExperimentDialogflowV3(
  GetExperimentDialogflowV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getExperiment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExperimentDialogflowV3Result.fromMap(result);
}
