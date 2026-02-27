import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_version_dialogflow_v2_args.dart';
import 'get_version_dialogflow_v2_result.dart';

/// Retrieves the specified agent version.
Future<GetVersionDialogflowV2Result> getVersionDialogflowV2(
  GetVersionDialogflowV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionDialogflowV2Result.fromMap(result);
}
