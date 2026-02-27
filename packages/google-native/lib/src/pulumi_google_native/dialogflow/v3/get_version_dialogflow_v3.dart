import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_version_dialogflow_v3_args.dart';
import 'get_version_dialogflow_v3_result.dart';

/// Retrieves the specified Version.
Future<GetVersionDialogflowV3Result> getVersionDialogflowV3(
  GetVersionDialogflowV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionDialogflowV3Result.fromMap(result);
}
