import 'package:pulumi/pulumi.dart' hide Config;
import 'get_network_args.dart';
import 'get_network_result.dart';

/// Returns the specified network.
Future<GetNetworkResult> getNetwork(
  GetNetworkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNetwork',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkResult.fromMap(result);
}
