import 'package:pulumi/pulumi.dart';
import 'get_network_args.dart';
import 'get_network_result.dart';

/// Data source for to retrieve network resource in AWS for Oracle Database@AWS.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetNetworkResult> getNetwork(
  GetNetworkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getNetwork:getNetwork',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkResult.fromMap(result);
}
