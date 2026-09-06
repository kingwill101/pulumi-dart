// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets the application SSH endpoint
class ApplicationGetEndpointResponse {
  /// The destination port to connect to.
  final pulumi.Input<int?>? destinationPort;
  /// The location of the endpoint.
  final pulumi.Input<String?>? location;
  /// The private ip address of the endpoint.
  final pulumi.Input<String?>? privateIPAddress;
  /// The public port to connect to.
  final pulumi.Input<int?>? publicPort;

  /// Creates a new [ApplicationGetEndpointResponse].
  /// [destinationPort] The destination port to connect to.
  /// [location] The location of the endpoint.
  /// [privateIPAddress] The private ip address of the endpoint.
  /// [publicPort] The public port to connect to.
  const ApplicationGetEndpointResponse({
    this.destinationPort,
    this.location,
    this.privateIPAddress,
    this.publicPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPort': ?destinationPort,
      'location': ?location,
      'privateIPAddress': ?privateIPAddress,
      'publicPort': ?publicPort,
    };
  }

  factory ApplicationGetEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGetEndpointResponse(
      destinationPort: (() { final guardedValue = map['destinationPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAddress: (() { final guardedValue = map['privateIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicPort: (() { final guardedValue = map['publicPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
