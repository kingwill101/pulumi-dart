// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_global_network_endpoint_global_network_endpoint_args_doc}
/// The set of arguments for GlobalNetworkEndpoint.
/// {@endtemplate}
/// {@macro pulumi_compute_global_network_endpoint_global_network_endpoint_args_doc}
class GlobalNetworkEndpointArgs {
  /// Fully qualified domain name of network endpoint.
  /// This can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT.
  final pulumi.Input<String>? fqdn;

  /// The global network endpoint group this endpoint is part of.
  final pulumi.Input<String> globalNetworkEndpointGroup;

  /// IPv4 address external endpoint.
  final pulumi.Input<String>? ipAddress;

  /// Port number of the external endpoint.
  final pulumi.Input<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GlobalNetworkEndpointArgs].
  /// [fqdn] Fully qualified domain name of network endpoint.
  /// [globalNetworkEndpointGroup] The global network endpoint group this endpoint is part of.
  /// [ipAddress] IPv4 address external endpoint.
  /// [port] Port number of the external endpoint.
  /// [project] The ID of the project in which the resource belongs.
  GlobalNetworkEndpointArgs({
    String? fqdn,
    required String globalNetworkEndpointGroup,
    String? ipAddress,
    required int port,
    String? project,
  }) : fqdn = pulumi.Input.asOptionalInput<String>(fqdn),
       globalNetworkEndpointGroup = pulumi.Input.asInput<String>(
         globalNetworkEndpointGroup,
       ),
       ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
       port = pulumi.Input.asInput<int>(port),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'globalNetworkEndpointGroup': globalNetworkEndpointGroup,
      'ipAddress': ?ipAddress,
      'port': port,
      'project': ?project,
    };
  }

  factory GlobalNetworkEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GlobalNetworkEndpointArgs(
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      globalNetworkEndpointGroup: map['globalNetworkEndpointGroup'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      port: map['port'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
