import 'package:pulumi/pulumi.dart';
import 'get_hub_args.dart';
import 'get_hub_result.dart';

/// Gets details about a Network Connectivity Center hub.
Future<GetHubResult> getHub(
  GetHubArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getHub',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHubResult.fromMap(result);
}
