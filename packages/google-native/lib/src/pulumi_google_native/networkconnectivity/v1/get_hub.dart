import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hub_args.dart';
import 'get_hub_result.dart';

/// Gets details about a Network Connectivity Center hub.
Future<GetHubResult> getHub(
  GetHubArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getHub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHubResult.fromMap(result);
}
