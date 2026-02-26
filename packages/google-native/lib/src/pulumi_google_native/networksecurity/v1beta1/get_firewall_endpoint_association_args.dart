// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFirewallEndpointAssociation.
class GetFirewallEndpointAssociationArgs {
  final Input<String> firewallEndpointAssociationId;
  final Input<String> location;
  final Input<String>? project;

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
          Input.asInput<String>(map['firewallEndpointAssociationId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
