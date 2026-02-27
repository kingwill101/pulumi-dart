import 'package:pulumi/pulumi.dart';
import 'get_local_gateways_args.dart';
import 'get_local_gateways_result.dart';

/// Provides information for multiple EC2 Local Gateways, such as their identifiers.
///
/// ## Example Usage
///
/// The following example retrieves Local Gateways with a resource tag of `service` set to `production`.
Future<GetLocalGatewaysResult> getLocalGateways(
  GetLocalGatewaysArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGateways:getLocalGateways',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewaysResult.fromMap(result);
}
