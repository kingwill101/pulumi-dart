// ignore_for_file: unused_element, unnecessary_cast


class GetIpv4GatewaysGateway {
  /// The creation time of the resource.
  final String createTime;
  /// Indicates whether the IPv4 gateway is activated.
  final bool enabled;
  /// The ID of the Ipv4 Gateway.
  final String id;
  /// The description of the IPv4 gateway.
  final String ipv4GatewayDescription;
  /// The resource attribute field that represents the resource level 1 ID.
  final String ipv4GatewayId;
  /// The name of the IPv4 gateway.
  final String ipv4GatewayName;
  /// ID of the route table associated with IPv4 Gateway.
  final String ipv4GatewayRouteTableId;
  /// The status of the resource.
  final String status;
  /// The ID of the VPC associated with the IPv4 Gateway.
  final String vpcId;

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
      createTime: map['createTime'] as String,
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      ipv4GatewayDescription: map['ipv4GatewayDescription'] as String,
      ipv4GatewayId: map['ipv4GatewayId'] as String,
      ipv4GatewayName: map['ipv4GatewayName'] as String,
      ipv4GatewayRouteTableId: map['ipv4GatewayRouteTableId'] as String,
      status: map['status'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

