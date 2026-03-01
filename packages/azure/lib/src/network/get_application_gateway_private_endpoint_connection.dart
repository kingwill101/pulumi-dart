// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayPrivateEndpointConnection {
  /// The ID of the Rewrite Rule Set
  final String id;
  /// The name of this Application Gateway.
  final String name;

  /// Creates a new [GetApplicationGatewayPrivateEndpointConnection].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  GetApplicationGatewayPrivateEndpointConnection({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetApplicationGatewayPrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayPrivateEndpointConnection(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

