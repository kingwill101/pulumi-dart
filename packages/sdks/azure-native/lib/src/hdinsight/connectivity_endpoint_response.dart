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
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      privateIPAddress: (() { final guardedValue = map['privateIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

