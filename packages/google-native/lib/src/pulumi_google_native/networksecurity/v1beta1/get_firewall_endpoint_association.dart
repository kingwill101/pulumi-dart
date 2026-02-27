import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_endpoint_association_args.dart';
import 'get_firewall_endpoint_association_result.dart';

/// Gets details of a single FirewallEndpointAssociation.
Future<GetFirewallEndpointAssociationResult> getFirewallEndpointAssociation(
  GetFirewallEndpointAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getFirewallEndpointAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallEndpointAssociationResult.fromMap(result);
}
