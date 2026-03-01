// ignore_for_file: unused_element, unnecessary_cast


/// Frontend port of an application gateway.
class ApplicationGatewayFrontendPortResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Name of the frontend port that is unique within an Application Gateway.
  final String? name;
  /// Frontend port.
  final int? port;
  /// The provisioning state of the frontend port resource.
  final String provisioningState;
  /// Type of the resource.
  final String type;

  /// Creates a new [ApplicationGatewayFrontendPortResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the frontend port that is unique within an Application Gateway.
  /// [port] Frontend port.
  /// [provisioningState] The provisioning state of the frontend port resource.
  /// [type] Type of the resource.
  ApplicationGatewayFrontendPortResponse({
    required this.etag,
    this.id,
    this.name,
    this.port,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'port': ?port,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ApplicationGatewayFrontendPortResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayFrontendPortResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

