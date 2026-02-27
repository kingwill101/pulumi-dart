// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFirewallEndpointAssociation.
class GetFirewallEndpointAssociationArgs {
  final pulumi.Input<String> firewallEndpointAssociationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetFirewallEndpointAssociationArgs({
    required this.firewallEndpointAssociationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallEndpointAssociationId'] = firewallEndpointAssociationId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetFirewallEndpointAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallEndpointAssociationArgs(
      firewallEndpointAssociationId:
          pulumi.Input.asInput<String>(map['firewallEndpointAssociationId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
