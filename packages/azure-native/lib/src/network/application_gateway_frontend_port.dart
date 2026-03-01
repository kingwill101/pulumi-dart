// ignore_for_file: unused_element, unnecessary_cast


/// Frontend port of an application gateway.
class ApplicationGatewayFrontendPort {
  /// Resource ID.
  final String? id;
  /// Name of the frontend port that is unique within an Application Gateway.
  final String? name;
  /// Frontend port.
  final int? port;

  /// Creates a new [ApplicationGatewayFrontendPort].
  /// [id] Resource ID.
  /// [name] Name of the frontend port that is unique within an Application Gateway.
  /// [port] Frontend port.
  ApplicationGatewayFrontendPort({
    this.id,
    this.name,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'port': ?port,
    };
  }

  factory ApplicationGatewayFrontendPort.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayFrontendPort(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

