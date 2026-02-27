// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GlobalNetworkEndpoint.
class GlobalNetworkEndpointArgs {
  /// Fully qualified domain name of network endpoint.
  /// This can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT.
  final Input<String>? fqdn;

  /// The global network endpoint group this endpoint is part of.
  final Input<String> globalNetworkEndpointGroup;

  /// IPv4 address external endpoint.
  final Input<String>? ipAddress;

  /// Port number of the external endpoint.
  final Input<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  GlobalNetworkEndpointArgs({
    this.fqdn,
    required this.globalNetworkEndpointGroup,
    this.ipAddress,
    required this.port,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fqdnValue = fqdn;
    if (fqdnValue != null) {
      map['fqdn'] = fqdnValue;
    }
    map['globalNetworkEndpointGroup'] = globalNetworkEndpointGroup;
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    map['port'] = port;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GlobalNetworkEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GlobalNetworkEndpointArgs(
      fqdn: Input.asOptionalInput<String>(map['fqdn']),
      globalNetworkEndpointGroup:
          Input.asInput<String>(map['globalNetworkEndpointGroup']),
      ipAddress: Input.asOptionalInput<String>(map['ipAddress']),
      port: Input.asInput<int>(map['port']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
