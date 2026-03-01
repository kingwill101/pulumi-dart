// ignore_for_file: unused_element, unnecessary_cast


/// Gets the application HTTP endpoints.
class ApplicationGetHttpsEndpointResponse {
  /// The list of access modes for the application.
  final List<String>? accessModes;
  /// The destination port to connect to.
  final int? destinationPort;
  /// The value indicates whether to disable GatewayAuth.
  final bool? disableGatewayAuth;
  /// The location of the endpoint.
  final String location;
  /// The private ip address of the endpoint.
  final String? privateIPAddress;
  /// The public port to connect to.
  final int publicPort;

  /// Creates a new [ApplicationGetHttpsEndpointResponse].
  /// [accessModes] The list of access modes for the application.
  /// [destinationPort] The destination port to connect to.
  /// [disableGatewayAuth] The value indicates whether to disable GatewayAuth.
  /// [location] The location of the endpoint.
  /// [privateIPAddress] The private ip address of the endpoint.
  /// [publicPort] The public port to connect to.
  ApplicationGetHttpsEndpointResponse({
    this.accessModes,
    this.destinationPort,
    this.disableGatewayAuth,
    required this.location,
    this.privateIPAddress,
    required this.publicPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessModes': ?accessModes,
      'destinationPort': ?destinationPort,
      'disableGatewayAuth': ?disableGatewayAuth,
      'location': location,
      'privateIPAddress': ?privateIPAddress,
      'publicPort': publicPort,
    };
  }

  factory ApplicationGetHttpsEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGetHttpsEndpointResponse(
      accessModes: map['accessModes'] == null ? null : (map['accessModes'] as List).cast<String>(),
      destinationPort: map['destinationPort'] == null ? null : map['destinationPort'] as int,
      disableGatewayAuth: map['disableGatewayAuth'] == null ? null : map['disableGatewayAuth'] as bool,
      location: map['location'] as String,
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      publicPort: map['publicPort'] as int,
    );
  }
}

