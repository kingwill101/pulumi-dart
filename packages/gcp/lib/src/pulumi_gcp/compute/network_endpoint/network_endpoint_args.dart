// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for NetworkEndpoint.
class NetworkEndpointArgs {
  /// The name for a specific VM instance that the IP address belongs to.
  /// This is required for network endpoints of type GCE_VM_IP_PORT.
  /// The instance must be in the same zone of network endpoint group.
  final pulumi.Input<String>? instance;

  /// IPv4 address of network endpoint. The IP address must belong
  /// to a VM in GCE (either the primary IP or as part of an aliased IP
  /// range).
  final pulumi.Input<String> ipAddress;

  /// The network endpoint group this endpoint is part of.
  final pulumi.Input<String> networkEndpointGroup;

  /// Port number of network endpoint.
  /// **Note** `port` is required unless the Network Endpoint Group is created
  /// with the type of `GCE_VM_IP`
  final pulumi.Input<int>? port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Zone where the containing network endpoint group is located.
  final pulumi.Input<String>? zone;

  NetworkEndpointArgs({
    this.instance,
    required this.ipAddress,
    required this.networkEndpointGroup,
    this.port,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceValue = instance;
    if (instanceValue != null) {
      map['instance'] = instanceValue;
    }
    map['ipAddress'] = ipAddress;
    map['networkEndpointGroup'] = networkEndpointGroup;
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory NetworkEndpointArgs.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointArgs(
      instance: pulumi.Input.asOptionalInput<String>(map['instance']),
      ipAddress: pulumi.Input.asInput<String>(map['ipAddress']),
      networkEndpointGroup:
          pulumi.Input.asInput<String>(map['networkEndpointGroup']),
      port: pulumi.Input.asOptionalInput<int>(map['port']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
