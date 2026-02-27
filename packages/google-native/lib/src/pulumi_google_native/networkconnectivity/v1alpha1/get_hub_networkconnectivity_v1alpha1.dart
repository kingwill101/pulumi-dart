import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hub_networkconnectivity_v1alpha1_args.dart';
import 'get_hub_networkconnectivity_v1alpha1_result.dart';

/// Gets details about a Network Connectivity Center hub.
Future<GetHubNetworkconnectivityV1alpha1Result>
    getHubNetworkconnectivityV1alpha1(
  GetHubNetworkconnectivityV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getHub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHubNetworkconnectivityV1alpha1Result.fromMap(result);
}
