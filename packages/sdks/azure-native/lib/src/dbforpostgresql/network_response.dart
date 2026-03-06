// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network properties of a server.
class NetworkResponse {
  /// Resource identifier of the delegated subnet. Required during creation of a new server, in case you want the server to be integrated into your own virtual network. For an update operation, you only have to provide this property if you want to change the value assigned for the private DNS zone.
  final pulumi.Input<String>? delegatedSubnetResourceId;
  /// Identifier of the private DNS zone. Required during creation of a new server, in case you want the server to be integrated into your own virtual network. For an update operation, you only have to provide this property if you want to change the value assigned for the private DNS zone.
  final pulumi.Input<String>? privateDnsZoneArmResourceId;
  /// Indicates if public network access is enabled or not. This is only supported for servers that are not integrated into a virtual network which is owned and provided by customer when server is deployed.
  final pulumi.Input<String>? publicNetworkAccess;

  /// Creates a new [NetworkResponse].
  /// [delegatedSubnetResourceId] Resource identifier of the delegated subnet. Required during creation of a new server, in case you want the server to be integrated into your own virtual network. For an update operation, you only have to provide this property if you want to change the value assigned for the private DNS zone.
  /// [privateDnsZoneArmResourceId] Identifier of the private DNS zone. Required during creation of a new server, in case you want the server to be integrated into your own virtual network. For an update operation, you only have to provide this property if you want to change the value assigned for the private DNS zone.
  /// [publicNetworkAccess] Indicates if public network access is enabled or not. This is only supported for servers that are not integrated into a virtual network which is owned and provided by customer when server is deployed.
  const NetworkResponse({
    this.delegatedSubnetResourceId,
    this.privateDnsZoneArmResourceId,
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegatedSubnetResourceId': ?delegatedSubnetResourceId,
      'privateDnsZoneArmResourceId': ?privateDnsZoneArmResourceId,
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory NetworkResponse.fromMap(Map<String, dynamic> map) {
    return NetworkResponse(
      delegatedSubnetResourceId: (() { final guardedValue = map['delegatedSubnetResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateDnsZoneArmResourceId: (() { final guardedValue = map['privateDnsZoneArmResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

