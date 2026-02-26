// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RegionNetworkEndpoint.
class RegionNetworkEndpointArgs {
  /// Client destination port for the `GCE_VM_IP_PORTMAP` NEG.
  final Input<int>? clientDestinationPort;

  /// Fully qualified domain name of network endpoint.
  /// This can only be specified when<span pulumi-lang-nodejs=" networkEndpointType " pulumi-lang-dotnet=" NetworkEndpointType " pulumi-lang-go=" networkEndpointType " pulumi-lang-python=" network_endpoint_type " pulumi-lang-yaml=" networkEndpointType " pulumi-lang-java=" networkEndpointType "> network_endpoint_type </span>of the NEG is INTERNET_FQDN_PORT.
  final Input<String>? fqdn;

  /// The name for a specific VM instance that the IP address belongs to.
  /// This is required for network endpoints of type GCE_VM_IP_PORTMAP.
  final Input<String>? instance;

  /// IPv4 address external endpoint.
  /// This can only be specified when<span pulumi-lang-nodejs=" networkEndpointType " pulumi-lang-dotnet=" NetworkEndpointType " pulumi-lang-go=" networkEndpointType " pulumi-lang-python=" network_endpoint_type " pulumi-lang-yaml=" networkEndpointType " pulumi-lang-java=" networkEndpointType "> network_endpoint_type </span>of the NEG is INTERNET_IP_PORT.
  final Input<String>? ipAddress;

  /// Port number of network endpoint.
  final Input<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Region where the containing network endpoint group is located.
  final Input<String>? region;

  /// The network endpoint group this endpoint is part of.
  final Input<String> regionNetworkEndpointGroup;

  RegionNetworkEndpointArgs({
    this.clientDestinationPort,
    this.fqdn,
    this.instance,
    this.ipAddress,
    required this.port,
    this.project,
    this.region,
    required this.regionNetworkEndpointGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientDestinationPortValue = clientDestinationPort;
    if (clientDestinationPortValue != null) {
      map['clientDestinationPort'] = clientDestinationPortValue;
    }
    final fqdnValue = fqdn;
    if (fqdnValue != null) {
      map['fqdn'] = fqdnValue;
    }
    final instanceValue = instance;
    if (instanceValue != null) {
      map['instance'] = instanceValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    map['port'] = port;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['regionNetworkEndpointGroup'] = regionNetworkEndpointGroup;
    return map;
  }

  factory RegionNetworkEndpointArgs.fromMap(Map<String, dynamic> map) {
    return RegionNetworkEndpointArgs(
      clientDestinationPort:
          Input.asOptionalInput<int>(map['clientDestinationPort']),
      fqdn: Input.asOptionalInput<String>(map['fqdn']),
      instance: Input.asOptionalInput<String>(map['instance']),
      ipAddress: Input.asOptionalInput<String>(map['ipAddress']),
      port: Input.asInput<int>(map['port']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      regionNetworkEndpointGroup:
          Input.asInput<String>(map['regionNetworkEndpointGroup']),
    );
  }
}
