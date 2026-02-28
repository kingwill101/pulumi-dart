// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_network_endpoint_network_endpoint_args_doc}
/// The set of arguments for NetworkEndpoint.
/// {@endtemplate}
/// {@macro pulumi_compute_network_endpoint_network_endpoint_args_doc}
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

  /// Creates a new [NetworkEndpointArgs].
  /// [instance] The name for a specific VM instance that the IP address belongs to.
  /// [ipAddress] IPv4 address of network endpoint. The IP address must belong
  /// [networkEndpointGroup] The network endpoint group this endpoint is part of.
  /// [port] Port number of network endpoint.
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] Zone where the containing network endpoint group is located.
  NetworkEndpointArgs({
    String? instance,
    required String ipAddress,
    required String networkEndpointGroup,
    int? port,
    String? project,
    String? zone,
  }) :
      instance = pulumi.Input.asOptionalInput<String>(instance),
      ipAddress = pulumi.Input.asInput<String>(ipAddress),
      networkEndpointGroup = pulumi.Input.asInput<String>(networkEndpointGroup),
      port = pulumi.Input.asOptionalInput<int>(port),
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': ?instance,
      'ipAddress': ipAddress,
      'networkEndpointGroup': networkEndpointGroup,
      'port': ?port,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory NetworkEndpointArgs.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointArgs(
      instance: map['instance'] == null ? null : map['instance'] as String,
      ipAddress: map['ipAddress'] as String,
      networkEndpointGroup: map['networkEndpointGroup'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

