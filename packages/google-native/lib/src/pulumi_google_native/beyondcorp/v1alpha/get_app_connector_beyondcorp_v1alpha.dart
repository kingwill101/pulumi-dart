import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_connector_beyondcorp_v1alpha_args.dart';
import 'get_app_connector_beyondcorp_v1alpha_result.dart';

/// Gets details of a single AppConnector.
Future<GetAppConnectorBeyondcorpV1alphaResult> getAppConnectorBeyondcorpV1alpha(
  GetAppConnectorBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppConnectorBeyondcorpV1alphaResult.fromMap(result);
}
