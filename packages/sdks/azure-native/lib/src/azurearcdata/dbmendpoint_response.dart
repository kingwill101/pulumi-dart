// ignore_for_file: unused_element, unnecessary_cast


/// Database mirroring endpoint related properties.
class DBMEndpointResponse {
  /// Name of the certificate.
  final String certificateName;
  /// The type of connection authentication required for connections to this endpoint
  final String connectionAuth;
  /// Encryption Algorithm
  final String encryptionAlgorithm;
  /// Name of the database mirroring endpoint.
  final String endpointName;
  /// Listener IP address.
  final String ipAddress;
  /// Is the port number dynamically assigned.
  final bool isDynamicPort;
  /// Is Encryption enabled
  final bool isEncryptionEnabled;
  /// The port number that the endpoint is listening on.
  final int port;
  /// Mirroring Role
  final String role;

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
  DBMEndpointResponse({
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
      certificateName: map['certificateName'] as String,
      connectionAuth: map['connectionAuth'] as String,
      encryptionAlgorithm: map['encryptionAlgorithm'] as String,
      endpointName: map['endpointName'] as String,
      ipAddress: map['ipAddress'] as String,
      isDynamicPort: map['isDynamicPort'] as bool,
      isEncryptionEnabled: map['isEncryptionEnabled'] as bool,
      port: map['port'] as int,
      role: map['role'] as String,
    );
  }
}

