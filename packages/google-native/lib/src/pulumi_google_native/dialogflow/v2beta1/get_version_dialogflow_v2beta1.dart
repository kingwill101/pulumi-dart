import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_version_dialogflow_v2beta1_args.dart';
import 'get_version_dialogflow_v2beta1_result.dart';

/// Retrieves the specified agent version.
Future<GetVersionDialogflowV2beta1Result> getVersionDialogflowV2beta1(
  GetVersionDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionDialogflowV2beta1Result.fromMap(result);
}
