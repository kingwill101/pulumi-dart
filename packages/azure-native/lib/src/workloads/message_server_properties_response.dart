// ignore_for_file: unused_element, unnecessary_cast


/// Defines the SAP message server properties.
class MessageServerPropertiesResponse {
  /// Defines the health of SAP Instances.
  final String health;
  /// message server SAP Hostname.
  final String hostname;
  /// message server HTTP Port.
  final double httpPort;
  /// message server HTTPS Port.
  final double httpsPort;
  /// message server internal MS port.
  final double internalMsPort;
  /// message server IP Address.
  final String ipAddress;
  /// message server port.
  final double msPort;

  /// Creates a new [MessageServerPropertiesResponse].
  /// [health] Defines the health of SAP Instances.
  /// [hostname] message server SAP Hostname.
  /// [httpPort] message server HTTP Port.
  /// [httpsPort] message server HTTPS Port.
  /// [internalMsPort] message server internal MS port.
  /// [ipAddress] message server IP Address.
  /// [msPort] message server port.
  MessageServerPropertiesResponse({
    required this.health,
    required this.hostname,
    required this.httpPort,
    required this.httpsPort,
    required this.internalMsPort,
    required this.ipAddress,
    required this.msPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'health': health,
      'hostname': hostname,
      'httpPort': httpPort,
      'httpsPort': httpsPort,
      'internalMsPort': internalMsPort,
      'ipAddress': ipAddress,
      'msPort': msPort,
    };
  }

  factory MessageServerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MessageServerPropertiesResponse(
      health: map['health'] as String,
      hostname: map['hostname'] as String,
      httpPort: map['httpPort'] as double,
      httpsPort: map['httpsPort'] as double,
      internalMsPort: map['internalMsPort'] as double,
      ipAddress: map['ipAddress'] as String,
      msPort: map['msPort'] as double,
    );
  }
}

