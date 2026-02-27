import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_dialogflow_v3beta1_args.dart';
import 'get_environment_dialogflow_v3beta1_result.dart';

/// Retrieves the specified Environment.
Future<GetEnvironmentDialogflowV3beta1Result> getEnvironmentDialogflowV3beta1(
  GetEnvironmentDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentDialogflowV3beta1Result.fromMap(result);
}
