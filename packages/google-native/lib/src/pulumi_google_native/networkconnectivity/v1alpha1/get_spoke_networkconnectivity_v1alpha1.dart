import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spoke_networkconnectivity_v1alpha1_args.dart';
import 'get_spoke_networkconnectivity_v1alpha1_result.dart';

/// Gets details about a Network Connectivity Center spoke.
Future<GetSpokeNetworkconnectivityV1alpha1Result>
    getSpokeNetworkconnectivityV1alpha1(
  GetSpokeNetworkconnectivityV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getSpoke',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpokeNetworkconnectivityV1alpha1Result.fromMap(result);
}
