// ignore_for_file: unused_element, unnecessary_cast


class HadoopClusterRolesEdgeNodeHttpsEndpoint {
  /// A list of access modes for the application.
  final List<String>? accessModes;
  /// The destination port to connect to.
  final int? destinationPort;
  /// The value indicates whether the gateway authentication is enabled or not.
  final bool? disableGatewayAuth;
  /// The private ip address of the endpoint.
  final String? privateIpAddress;
  /// The application's subdomain suffix.
  final String? subDomainSuffix;

  /// Creates a new [HadoopClusterRolesEdgeNodeHttpsEndpoint].
  /// [accessModes] A list of access modes for the application.
  /// [destinationPort] The destination port to connect to.
  /// [disableGatewayAuth] The value indicates whether the gateway authentication is enabled or not.
  /// [privateIpAddress] The private ip address of the endpoint.
  /// [subDomainSuffix] The application's subdomain suffix.
  HadoopClusterRolesEdgeNodeHttpsEndpoint({
    this.accessModes,
    this.destinationPort,
    this.disableGatewayAuth,
    this.privateIpAddress,
    this.subDomainSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessModes': ?accessModes,
      'destinationPort': ?destinationPort,
      'disableGatewayAuth': ?disableGatewayAuth,
      'privateIpAddress': ?privateIpAddress,
      'subDomainSuffix': ?subDomainSuffix,
    };
  }

  factory HadoopClusterRolesEdgeNodeHttpsEndpoint.fromMap(Map<String, dynamic> map) {
    return HadoopClusterRolesEdgeNodeHttpsEndpoint(
      accessModes: map['accessModes'] == null ? null : (map['accessModes'] as List).cast<String>(),
      destinationPort: map['destinationPort'] == null ? null : map['destinationPort'] as int,
      disableGatewayAuth: map['disableGatewayAuth'] == null ? null : map['disableGatewayAuth'] as bool,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      subDomainSuffix: map['subDomainSuffix'] == null ? null : map['subDomainSuffix'] as String,
    );
  }
}

