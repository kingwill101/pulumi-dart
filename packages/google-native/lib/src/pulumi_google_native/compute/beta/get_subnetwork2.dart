import 'package:pulumi/pulumi.dart' hide Config;
import 'get_subnetwork_args2.dart';
import 'get_subnetwork_result2.dart';

/// Returns the specified subnetwork.
Future<GetSubnetworkResult2> getSubnetwork2(
  GetSubnetworkArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSubnetwork',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkResult2.fromMap(result);
}
