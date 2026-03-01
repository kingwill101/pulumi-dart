// ignore_for_file: unused_element, unnecessary_cast


/// Defines the SAP Enqueue Server properties.
class EnqueueServerPropertiesResponse {
  /// Defines the health of SAP Instances.
  final String health;
  /// Enqueue Server SAP Hostname.
  final String hostname;
  /// Enqueue Server SAP IP Address.
  final String ipAddress;
  /// Enqueue Server Port.
  final double port;

  /// Creates a new [EnqueueServerPropertiesResponse].
  /// [health] Defines the health of SAP Instances.
  /// [hostname] Enqueue Server SAP Hostname.
  /// [ipAddress] Enqueue Server SAP IP Address.
  /// [port] Enqueue Server Port.
  EnqueueServerPropertiesResponse({
    required this.health,
    required this.hostname,
    required this.ipAddress,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'health': health,
      'hostname': hostname,
      'ipAddress': ipAddress,
      'port': port,
    };
  }

  factory EnqueueServerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EnqueueServerPropertiesResponse(
      health: map['health'] as String,
      hostname: map['hostname'] as String,
      ipAddress: map['ipAddress'] as String,
      port: map['port'] as double,
    );
  }
}

