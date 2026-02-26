import 'package:pulumi/pulumi.dart';
import 'get_firewall_endpoint_args.dart';
import 'get_firewall_endpoint_result.dart';

/// Gets details of a single Endpoint.
Future<GetFirewallEndpointResult> getFirewallEndpoint(
  GetFirewallEndpointArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getFirewallEndpoint',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFirewallEndpointResult.fromMap(result);
}
