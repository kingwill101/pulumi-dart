// ignore_for_file: unused_element, unnecessary_cast


/// Customer end point to store and retrieve data during a contact with the spacecraft.
class EndPointResponse {
  /// Name of an end point.
  final String endPointName;
  /// IP Address (IPv4).
  final String ipAddress;
  /// TCP port to listen on to receive data.
  final String port;
  /// Protocol either UDP or TCP.
  final String protocol;

  /// Creates a new [EndPointResponse].
  /// [endPointName] Name of an end point.
  /// [ipAddress] IP Address (IPv4).
  /// [port] TCP port to listen on to receive data.
  /// [protocol] Protocol either UDP or TCP.
  EndPointResponse({
    required this.endPointName,
    required this.ipAddress,
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endPointName': endPointName,
      'ipAddress': ipAddress,
      'port': port,
      'protocol': protocol,
    };
  }

  factory EndPointResponse.fromMap(Map<String, dynamic> map) {
    return EndPointResponse(
      endPointName: map['endPointName'] as String,
      ipAddress: map['ipAddress'] as String,
      port: map['port'] as String,
      protocol: map['protocol'] as String,
    );
  }
}

