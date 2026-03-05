// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIpv4GatewaysGateway {
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;
  /// Indicates whether the IPv4 gateway is activated.
  final pulumi.Input<bool> enabled;
  /// The ID of the Ipv4 Gateway.
  final pulumi.Input<String> id;
  /// The description of the IPv4 gateway.
  final pulumi.Input<String> ipv4GatewayDescription;
  /// The resource attribute field that represents the resource level 1 ID.
  final pulumi.Input<String> ipv4GatewayId;
  /// The name of the IPv4 gateway.
  final pulumi.Input<String> ipv4GatewayName;
  /// ID of the route table associated with IPv4 Gateway.
  final pulumi.Input<String> ipv4GatewayRouteTableId;
  /// The status of the resource.
  final pulumi.Input<String> status;
  /// The ID of the VPC associated with the IPv4 Gateway.
  final pulumi.Input<String> vpcId;

  /// Creates a new [GetIpv4GatewaysGateway].
  /// [createTime] The creation time of the resource.
  /// [enabled] Indicates whether the IPv4 gateway is activated.
  /// [id] The ID of the Ipv4 Gateway.
  /// [ipv4GatewayDescription] The description of the IPv4 gateway.
  /// [ipv4GatewayId] The resource attribute field that represents the resource level 1 ID.
  /// [ipv4GatewayName] The name of the IPv4 gateway.
  /// [ipv4GatewayRouteTableId] ID of the route table associated with IPv4 Gateway.
  /// [status] The status of the resource.
  /// [vpcId] The ID of the VPC associated with the IPv4 Gateway.
  GetIpv4GatewaysGateway({
    required this.createTime,
    required this.enabled,
    required this.id,
    required this.ipv4GatewayDescription,
    required this.ipv4GatewayId,
    required this.ipv4GatewayName,
    required this.ipv4GatewayRouteTableId,
    required this.status,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'enabled': enabled,
      'id': id,
      'ipv4GatewayDescription': ipv4GatewayDescription,
      'ipv4GatewayId': ipv4GatewayId,
      'ipv4GatewayName': ipv4GatewayName,
      'ipv4GatewayRouteTableId': ipv4GatewayRouteTableId,
      'status': status,
      'vpcId': vpcId,
    };
  }

  factory GetIpv4GatewaysGateway.fromMap(Map<String, dynamic> map) {
    return GetIpv4GatewaysGateway(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipv4GatewayDescription: pulumi.Input.fromValue(map['ipv4GatewayDescription'] as String),
      ipv4GatewayId: pulumi.Input.fromValue(map['ipv4GatewayId'] as String),
      ipv4GatewayName: pulumi.Input.fromValue(map['ipv4GatewayName'] as String),
      ipv4GatewayRouteTableId: pulumi.Input.fromValue(map['ipv4GatewayRouteTableId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

