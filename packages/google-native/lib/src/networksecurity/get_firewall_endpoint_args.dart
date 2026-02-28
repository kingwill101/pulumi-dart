// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_firewall_endpoint_args_doc}
/// Arguments for getFirewallEndpoint.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_firewall_endpoint_args_doc}
class GetFirewallEndpointArgs {
  final pulumi.Input<String> firewallEndpointId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetFirewallEndpointArgs].
  /// [firewallEndpointId] Required.
  /// [location] Required.
  /// [organizationId] Required.
  GetFirewallEndpointArgs({
    required String firewallEndpointId,
    required String location,
    required String organizationId,
  })  : firewallEndpointId = pulumi.Input.asInput<String>(firewallEndpointId),
        location = pulumi.Input.asInput<String>(location),
        organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallEndpointId'] = firewallEndpointId;
    map['location'] = location;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetFirewallEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallEndpointArgs(
      firewallEndpointId: map['firewallEndpointId'] as String,
      location: map['location'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
