import 'package:pulumi/pulumi.dart' hide Config;
import 'get_network_args2.dart';
import 'get_network_result2.dart';

/// Returns the specified network.
Future<GetNetworkResult2> getNetwork2(
  GetNetworkArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetwork',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkResult2.fromMap(result);
}
