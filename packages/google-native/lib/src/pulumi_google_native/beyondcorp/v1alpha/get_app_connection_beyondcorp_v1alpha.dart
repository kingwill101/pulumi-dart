import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_connection_beyondcorp_v1alpha_args.dart';
import 'get_app_connection_beyondcorp_v1alpha_result.dart';

/// Gets details of a single AppConnection.
Future<GetAppConnectionBeyondcorpV1alphaResult>
    getAppConnectionBeyondcorpV1alpha(
  GetAppConnectionBeyondcorpV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppConnectionBeyondcorpV1alphaResult.fromMap(result);
}
