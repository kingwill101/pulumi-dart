// ignore_for_file: unused_element, unnecessary_cast


/// Gets the application HTTP endpoints.
class ApplicationGetHttpsEndpoint {
  /// The list of access modes for the application.
  final List<String>? accessModes;
  /// The destination port to connect to.
  final int? destinationPort;
  /// The value indicates whether to disable GatewayAuth.
  final bool? disableGatewayAuth;
  /// The private ip address of the endpoint.
  final String? privateIPAddress;
  /// The subdomain suffix of the application.
  final String? subDomainSuffix;

  /// Creates a new [ApplicationGetHttpsEndpoint].
  /// [accessModes] The list of access modes for the application.
  /// [destinationPort] The destination port to connect to.
  /// [disableGatewayAuth] The value indicates whether to disable GatewayAuth.
  /// [privateIPAddress] The private ip address of the endpoint.
  /// [subDomainSuffix] The subdomain suffix of the application.
  ApplicationGetHttpsEndpoint({
    this.accessModes,
    this.destinationPort,
    this.disableGatewayAuth,
    this.privateIPAddress,
    this.subDomainSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessModes': ?accessModes,
      'destinationPort': ?destinationPort,
      'disableGatewayAuth': ?disableGatewayAuth,
      'privateIPAddress': ?privateIPAddress,
      'subDomainSuffix': ?subDomainSuffix,
    };
  }

  factory ApplicationGetHttpsEndpoint.fromMap(Map<String, dynamic> map) {
    return ApplicationGetHttpsEndpoint(
      accessModes: map['accessModes'] == null ? null : (map['accessModes'] as List).cast<String>(),
      destinationPort: map['destinationPort'] == null ? null : map['destinationPort'] as int,
      disableGatewayAuth: map['disableGatewayAuth'] == null ? null : map['disableGatewayAuth'] as bool,
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      subDomainSuffix: map['subDomainSuffix'] == null ? null : map['subDomainSuffix'] as String,
    );
  }
}

