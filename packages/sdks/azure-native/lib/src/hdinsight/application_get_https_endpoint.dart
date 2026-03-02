// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets the application HTTP endpoints.
class ApplicationGetHttpsEndpoint {
  /// The list of access modes for the application.
  final pulumi.Input<List<String>>? accessModes;
  /// The destination port to connect to.
  final pulumi.Input<int>? destinationPort;
  /// The value indicates whether to disable GatewayAuth.
  final pulumi.Input<bool>? disableGatewayAuth;
  /// The private ip address of the endpoint.
  final pulumi.Input<String>? privateIPAddress;
  /// The subdomain suffix of the application.
  final pulumi.Input<String>? subDomainSuffix;

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
      accessModes: map['accessModes'] == null ? null : ((map['accessModes'] as List).cast<String>()).input(),
      destinationPort: map['destinationPort'] == null ? null : (map['destinationPort'] as int).input(),
      disableGatewayAuth: map['disableGatewayAuth'] == null ? null : (map['disableGatewayAuth'] as bool).input(),
      privateIPAddress: map['privateIPAddress'] == null ? null : (map['privateIPAddress'] as String).input(),
      subDomainSuffix: map['subDomainSuffix'] == null ? null : (map['subDomainSuffix'] as String).input(),
    );
  }
}

