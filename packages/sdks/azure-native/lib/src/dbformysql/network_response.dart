// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network related properties of a server
class NetworkResponse {
  /// Delegated subnet resource id used to setup vnet for a server.
  final pulumi.Input<String>? delegatedSubnetResourceId;
  /// Private DNS zone resource id.
  final pulumi.Input<String>? privateDnsZoneResourceId;
  /// Whether or not public network access is allowed for this server. Value is 'Disabled' when server has VNet integration.
  final pulumi.Input<String>? publicNetworkAccess;

  /// Creates a new [NetworkResponse].
  /// [delegatedSubnetResourceId] Delegated subnet resource id used to setup vnet for a server.
  /// [privateDnsZoneResourceId] Private DNS zone resource id.
  /// [publicNetworkAccess] Whether or not public network access is allowed for this server. Value is 'Disabled' when server has VNet integration.
  const NetworkResponse({
    this.delegatedSubnetResourceId,
    this.privateDnsZoneResourceId,
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegatedSubnetResourceId': ?delegatedSubnetResourceId,
      'privateDnsZoneResourceId': ?privateDnsZoneResourceId,
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory NetworkResponse.fromMap(Map<String, dynamic> map) {
    return NetworkResponse(
      delegatedSubnetResourceId: (() { final guardedValue = map['delegatedSubnetResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateDnsZoneResourceId: (() { final guardedValue = map['privateDnsZoneResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
