import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_dialogflow_v3_args.dart';
import 'get_environment_dialogflow_v3_result.dart';

/// Retrieves the specified Environment.
Future<GetEnvironmentDialogflowV3Result> getEnvironmentDialogflowV3(
  GetEnvironmentDialogflowV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentDialogflowV3Result.fromMap(result);
}
