// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database mirroring endpoint related properties.
class DBMEndpointResponse {
  /// Name of the certificate.
  final pulumi.Input<String> certificateName;
  /// The type of connection authentication required for connections to this endpoint
  final pulumi.Input<String> connectionAuth;
  /// Encryption Algorithm
  final pulumi.Input<String> encryptionAlgorithm;
  /// Name of the database mirroring endpoint.
  final pulumi.Input<String> endpointName;
  /// Listener IP address.
  final pulumi.Input<String> ipAddress;
  /// Is the port number dynamically assigned.
  final pulumi.Input<bool> isDynamicPort;
  /// Is Encryption enabled
  final pulumi.Input<bool> isEncryptionEnabled;
  /// The port number that the endpoint is listening on.
  final pulumi.Input<int> port;
  /// Mirroring Role
  final pulumi.Input<String> role;

  /// Creates a new [DBMEndpointResponse].
  /// [certificateName] Name of the certificate.
  /// [connectionAuth] The type of connection authentication required for connections to this endpoint
  /// [encryptionAlgorithm] Encryption Algorithm
  /// [endpointName] Name of the database mirroring endpoint.
  /// [ipAddress] Listener IP address.
  /// [isDynamicPort] Is the port number dynamically assigned.
  /// [isEncryptionEnabled] Is Encryption enabled
  /// [port] The port number that the endpoint is listening on.
  /// [role] Mirroring Role
  const DBMEndpointResponse({
    required this.certificateName,
    required this.connectionAuth,
    required this.encryptionAlgorithm,
    required this.endpointName,
    required this.ipAddress,
    required this.isDynamicPort,
    required this.isEncryptionEnabled,
    required this.port,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'connectionAuth': connectionAuth,
      'encryptionAlgorithm': encryptionAlgorithm,
      'endpointName': endpointName,
      'ipAddress': ipAddress,
      'isDynamicPort': isDynamicPort,
      'isEncryptionEnabled': isEncryptionEnabled,
      'port': port,
      'role': role,
    };
  }

  factory DBMEndpointResponse.fromMap(Map<String, dynamic> map) {
    return DBMEndpointResponse(
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      connectionAuth: pulumi.Input.fromValue(map['connectionAuth'] as String),
      encryptionAlgorithm: pulumi.Input.fromValue(map['encryptionAlgorithm'] as String),
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      isDynamicPort: pulumi.Input.fromValue(map['isDynamicPort'] as bool),
      isEncryptionEnabled: pulumi.Input.fromValue(map['isEncryptionEnabled'] as bool),
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}
