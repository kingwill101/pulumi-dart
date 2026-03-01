// ignore_for_file: unused_element, unnecessary_cast

import 'routing_configuration_response.dart';

/// Properties of the NetworkVirtualApplianceConnection subresource.
class NetworkVirtualApplianceConnectionPropertiesResponse {
  /// Network Virtual Appliance ASN.
  final double? asn;
  /// List of bgpPeerAddresses for the NVA instances
  final List<String>? bgpPeerAddress;
  /// Enable internet security.
  final bool? enableInternetSecurity;
  /// The name of the resource.
  final String? name;
  /// The provisioning state of the NetworkVirtualApplianceConnection resource.
  final String provisioningState;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final RoutingConfigurationResponse? routingConfiguration;
  /// Unique identifier for the connection.
  final double? tunnelIdentifier;

  /// Creates a new [NetworkVirtualApplianceConnectionPropertiesResponse].
  /// [asn] Network Virtual Appliance ASN.
  /// [bgpPeerAddress] List of bgpPeerAddresses for the NVA instances
  /// [enableInternetSecurity] Enable internet security.
  /// [name] The name of the resource.
  /// [provisioningState] The provisioning state of the NetworkVirtualApplianceConnection resource.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  /// [tunnelIdentifier] Unique identifier for the connection.
  NetworkVirtualApplianceConnectionPropertiesResponse({
    this.asn,
    this.bgpPeerAddress,
    this.enableInternetSecurity,
    this.name,
    required this.provisioningState,
    this.routingConfiguration,
    this.tunnelIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'bgpPeerAddress': ?bgpPeerAddress,
      'enableInternetSecurity': ?enableInternetSecurity,
      'name': ?name,
      'provisioningState': provisioningState,
      'routingConfiguration': ?routingConfiguration == null ? null : routingConfiguration!.toMap(),
      'tunnelIdentifier': ?tunnelIdentifier,
    };
  }

  factory NetworkVirtualApplianceConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NetworkVirtualApplianceConnectionPropertiesResponse(
      asn: map['asn'] == null ? null : map['asn'] as double,
      bgpPeerAddress: map['bgpPeerAddress'] == null ? null : (map['bgpPeerAddress'] as List).cast<String>(),
      enableInternetSecurity: map['enableInternetSecurity'] == null ? null : map['enableInternetSecurity'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      routingConfiguration: map['routingConfiguration'] == null ? null : RoutingConfigurationResponse.fromMap((map['routingConfiguration'] as Map).cast<String, dynamic>()),
      tunnelIdentifier: map['tunnelIdentifier'] == null ? null : map['tunnelIdentifier'] as double,
    );
  }
}

