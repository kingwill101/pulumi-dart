// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for NetworkEndpointGroup.
class NetworkEndpointGroupArgs {
  /// The default port used if the port number is not specified in the
  /// network endpoint.
  final pulumi.Input<int>? defaultPort;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String>? description;

  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The network to which all network endpoints in the NEG belong.
  /// Uses "default" project network if unspecified.
  final pulumi.Input<String> network;

  /// Type of network endpoints in this network endpoint group.
  /// NON_GCP_PRIVATE_IP_PORT is used for hybrid connectivity network
  /// endpoint groups (see https://cloud.google.com/load-balancing/docs/hybrid).
  /// Note that NON_GCP_PRIVATE_IP_PORT can only be used with Backend Services
  /// that 1) have the following load balancing schemes: EXTERNAL, EXTERNAL_MANAGED,
  /// INTERNAL_MANAGED, and INTERNAL_SELF_MANAGED and 2) support the RATE or
  /// CONNECTION balancing modes.
  /// Possible values include: GCE_VM_IP, GCE_VM_IP_PORT, NON_GCP_PRIVATE_IP_PORT, INTERNET_IP_PORT, INTERNET_FQDN_PORT, SERVERLESS, and PRIVATE_SERVICE_CONNECT.
  /// Default value is `GCE_VM_IP_PORT`.
  /// Possible values are: `GCE_VM_IP`, `GCE_VM_IP_PORT`, `NON_GCP_PRIVATE_IP_PORT`, `INTERNET_IP_PORT`, `INTERNET_FQDN_PORT`, `SERVERLESS`, `PRIVATE_SERVICE_CONNECT`.
  final pulumi.Input<String>? networkEndpointType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Optional subnetwork to which all network endpoints in the NEG belong.
  final pulumi.Input<String>? subnetwork;

  /// Zone where the network endpoint group is located.
  final pulumi.Input<String>? zone;

  NetworkEndpointGroupArgs({
    this.defaultPort,
    this.description,
    this.name,
    required this.network,
    this.networkEndpointType,
    this.project,
    this.subnetwork,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultPortValue = defaultPort;
    if (defaultPortValue != null) {
      map['defaultPort'] = defaultPortValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['network'] = network;
    final networkEndpointTypeValue = networkEndpointType;
    if (networkEndpointTypeValue != null) {
      map['networkEndpointType'] = networkEndpointTypeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory NetworkEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointGroupArgs(
      defaultPort: pulumi.Input.asOptionalInput<int>(map['defaultPort']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asInput<String>(map['network']),
      networkEndpointType:
          pulumi.Input.asOptionalInput<String>(map['networkEndpointType']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      subnetwork: pulumi.Input.asOptionalInput<String>(map['subnetwork']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
