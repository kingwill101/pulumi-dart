// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The connectivity properties
class ConnectivityEndpointResponse {
  /// The location of the endpoint.
  final pulumi.Input<String>? location;
  /// The name of the endpoint.
  final pulumi.Input<String>? name;
  /// The port to connect to.
  final pulumi.Input<int>? port;
  /// The private ip address of the endpoint.
  final pulumi.Input<String>? privateIPAddress;
  /// The protocol of the endpoint.
  final pulumi.Input<String>? protocol;

  /// Creates a new [ConnectivityEndpointResponse].
  /// [location] The location of the endpoint.
  /// [name] The name of the endpoint.
  /// [port] The port to connect to.
  /// [privateIPAddress] The private ip address of the endpoint.
  /// [protocol] The protocol of the endpoint.
  ConnectivityEndpointResponse({
    this.location,
    this.name,
    this.port,
    this.privateIPAddress,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'port': ?port,
      'privateIPAddress': ?privateIPAddress,
      'protocol': ?protocol,
    };
  }

  factory ConnectivityEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ConnectivityEndpointResponse(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      privateIPAddress: map['privateIPAddress'] == null ? null : (map['privateIPAddress'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
    );
  }
}

