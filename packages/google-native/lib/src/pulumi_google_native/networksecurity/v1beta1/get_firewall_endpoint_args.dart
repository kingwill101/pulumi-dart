// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFirewallEndpoint.
class GetFirewallEndpointArgs {
  final pulumi.Input<String> firewallEndpointId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

  GetFirewallEndpointArgs({
    required this.firewallEndpointId,
    required this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallEndpointId'] = firewallEndpointId;
    map['location'] = location;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetFirewallEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallEndpointArgs(
      firewallEndpointId:
          pulumi.Input.asInput<String>(map['firewallEndpointId']),
      location: pulumi.Input.asInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
