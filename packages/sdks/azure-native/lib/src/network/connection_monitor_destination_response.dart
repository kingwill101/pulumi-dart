// ignore_for_file: unused_element, unnecessary_cast


/// Describes the destination of connection monitor.
class ConnectionMonitorDestinationResponse {
  /// Address of the connection monitor destination (IP or domain name).
  final String? address;
  /// The destination port used by connection monitor.
  final int? port;
  /// The ID of the resource used as the destination by connection monitor.
  final String? resourceId;

  /// Creates a new [ConnectionMonitorDestinationResponse].
  /// [address] Address of the connection monitor destination (IP or domain name).
  /// [port] The destination port used by connection monitor.
  /// [resourceId] The ID of the resource used as the destination by connection monitor.
  ConnectionMonitorDestinationResponse({
    this.address,
    this.port,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
      'resourceId': ?resourceId,
    };
  }

  factory ConnectionMonitorDestinationResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorDestinationResponse(
      address: map['address'] == null ? null : map['address'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

