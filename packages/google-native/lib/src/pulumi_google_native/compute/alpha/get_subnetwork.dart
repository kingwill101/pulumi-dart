import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnetwork_args.dart';
import 'get_subnetwork_result.dart';

/// Returns the specified subnetwork.
Future<GetSubnetworkResult> getSubnetwork(
  GetSubnetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getSubnetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkResult.fromMap(result);
}
