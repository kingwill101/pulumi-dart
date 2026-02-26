// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFirewallEndpoint.
class GetFirewallEndpointArgs {
  final Input<String> firewallEndpointId;
  final Input<String> location;
  final Input<String> organizationId;

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
      firewallEndpointId: Input.asInput<String>(map['firewallEndpointId']),
      location: Input.asInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
