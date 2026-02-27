import 'package:pulumi/pulumi.dart' hide Config;
import 'get_network_args3.dart';
import 'get_network_result3.dart';

/// Returns the specified network.
Future<GetNetworkResult3> getNetwork3(
  GetNetworkArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNetwork',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkResult3.fromMap(result);
}
