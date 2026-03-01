// ignore_for_file: unused_element, unnecessary_cast


class GetIpv6GatewaysGateway {
  /// The status of the IPv6 gateway. Valid values:`Normal`, `FinancialLocked` and `SecurityLocked`. `Normal`: working as expected. `FinancialLocked`: locked due to overdue payments. `SecurityLocked`: locked due to security reasons.
  final String businessStatus;
  /// The creation time of the resource.
  final String createTime;
  /// The description of the IPv6 gateway.
  final String description;
  /// The time when the IPv6 gateway expires.
  final String expiredTime;
  /// The ID of the Ipv6 Gateway.
  final String id;
  /// The metering method of the IPv6 gateway. Valid values: `PayAsYouGo`.
  final String instanceChargeType;
  /// The first ID of the resource.
  final String ipv6GatewayId;
  /// The name of the IPv6 gateway.
  final String ipv6GatewayName;
  /// The specification of the IPv6 gateway. Valid values: `Large`, `Medium` and `Small`. `Small` (default): Free Edition. `Medium`: Enterprise Edition . `Large`: Enhanced Enterprise Edition. The throughput capacity of an IPv6 gateway varies based on the edition. For more information, see [Editions of IPv6 gateways](https://www.alibabacloud.com/help/doc-detail/98926.htm).
  final String spec;
  /// The status of the IPv6 gateway. Valid values: `Available`, `Deleting`, `Pending`.
  final String status;
  /// The ID of the virtual private cloud (VPC) to which the IPv6 gateway belongs.
  final String vpcId;

  /// Creates a new [GetIpv6GatewaysGateway].
  /// [businessStatus] The status of the IPv6 gateway. Valid values:`Normal`, `FinancialLocked` and `SecurityLocked`. `Normal`: working as expected. `FinancialLocked`: locked due to overdue payments. `SecurityLocked`: locked due to security reasons.
  /// [createTime] The creation time of the resource.
  /// [description] The description of the IPv6 gateway.
  /// [expiredTime] The time when the IPv6 gateway expires.
  /// [id] The ID of the Ipv6 Gateway.
  /// [instanceChargeType] The metering method of the IPv6 gateway. Valid values: `PayAsYouGo`.
  /// [ipv6GatewayId] The first ID of the resource.
  /// [ipv6GatewayName] The name of the IPv6 gateway.
  /// [spec] The specification of the IPv6 gateway. Valid values: `Large`, `Medium` and `Small`. `Small` (default): Free Edition. `Medium`: Enterprise Edition . `Large`: Enhanced Enterprise Edition. The throughput capacity of an IPv6 gateway varies based on the edition. For more information, see [Editions of IPv6 gateways](https://www.alibabacloud.com/help/doc-detail/98926.htm).
  /// [status] The status of the IPv6 gateway. Valid values: `Available`, `Deleting`, `Pending`.
  /// [vpcId] The ID of the virtual private cloud (VPC) to which the IPv6 gateway belongs.
  GetIpv6GatewaysGateway({
    required this.businessStatus,
    required this.createTime,
    required this.description,
    required this.expiredTime,
    required this.id,
    required this.instanceChargeType,
    required this.ipv6GatewayId,
    required this.ipv6GatewayName,
    required this.spec,
    required this.status,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessStatus': businessStatus,
      'createTime': createTime,
      'description': description,
      'expiredTime': expiredTime,
      'id': id,
      'instanceChargeType': instanceChargeType,
      'ipv6GatewayId': ipv6GatewayId,
      'ipv6GatewayName': ipv6GatewayName,
      'spec': spec,
      'status': status,
      'vpcId': vpcId,
    };
  }

  factory GetIpv6GatewaysGateway.fromMap(Map<String, dynamic> map) {
    return GetIpv6GatewaysGateway(
      businessStatus: map['businessStatus'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      expiredTime: map['expiredTime'] as String,
      id: map['id'] as String,
      instanceChargeType: map['instanceChargeType'] as String,
      ipv6GatewayId: map['ipv6GatewayId'] as String,
      ipv6GatewayName: map['ipv6GatewayName'] as String,
      spec: map['spec'] as String,
      status: map['status'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

