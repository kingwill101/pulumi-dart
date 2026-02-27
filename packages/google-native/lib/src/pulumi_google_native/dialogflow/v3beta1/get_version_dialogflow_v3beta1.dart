import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_version_dialogflow_v3beta1_args.dart';
import 'get_version_dialogflow_v3beta1_result.dart';

/// Retrieves the specified Version.
Future<GetVersionDialogflowV3beta1Result> getVersionDialogflowV3beta1(
  GetVersionDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionDialogflowV3beta1Result.fromMap(result);
}
