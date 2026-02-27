import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_dialogflow_v2_args.dart';
import 'get_environment_dialogflow_v2_result.dart';

/// Retrieves the specified agent environment.
Future<GetEnvironmentDialogflowV2Result> getEnvironmentDialogflowV2(
  GetEnvironmentDialogflowV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentDialogflowV2Result.fromMap(result);
}
