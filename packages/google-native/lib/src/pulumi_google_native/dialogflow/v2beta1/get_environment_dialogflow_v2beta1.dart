import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_dialogflow_v2beta1_args.dart';
import 'get_environment_dialogflow_v2beta1_result.dart';

/// Retrieves the specified agent environment.
Future<GetEnvironmentDialogflowV2beta1Result> getEnvironmentDialogflowV2beta1(
  GetEnvironmentDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentDialogflowV2beta1Result.fromMap(result);
}
