import 'package:pulumi/pulumi.dart' hide Config;
import 'get_subnetwork_args.dart';
import 'get_subnetwork_result.dart';

/// Returns the specified subnetwork.
Future<GetSubnetworkResult> getSubnetwork(
  GetSubnetworkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getSubnetwork',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkResult.fromMap(result);
}
