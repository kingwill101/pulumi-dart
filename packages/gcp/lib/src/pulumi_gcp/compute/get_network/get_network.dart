import 'package:pulumi/pulumi.dart';
import 'get_network_args.dart';
import 'get_network_result.dart';

/// Get a network within GCE from its name.
Future<GetNetworkResult> getNetwork(
  GetNetworkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetwork:getNetwork',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkResult.fromMap(result);
}
