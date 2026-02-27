import 'package:pulumi/pulumi.dart';
import 'get_endpoint_args2.dart';
import 'get_endpoint_result2.dart';

/// Get information on an EC2 Client VPN endpoint.
///
/// ## Example Usage
///
/// ### By Filter
///
///
///
/// ### By Identifier
Future<GetEndpointResult2> getEndpoint2(
  GetEndpointArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2clientvpn/getEndpoint:getEndpoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult2.fromMap(result);
}
