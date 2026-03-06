// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIpv6GatewaysGateway {
  /// The status of the IPv6 gateway. Valid values:`Normal`, `FinancialLocked` and `SecurityLocked`. `Normal`: working as expected. `FinancialLocked`: locked due to overdue payments. `SecurityLocked`: locked due to security reasons.
  final pulumi.Input<String> businessStatus;
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;
  /// The description of the IPv6 gateway.
  final pulumi.Input<String> description;
  /// The time when the IPv6 gateway expires.
  final pulumi.Input<String> expiredTime;
  /// The ID of the Ipv6 Gateway.
  final pulumi.Input<String> id;
  /// The metering method of the IPv6 gateway. Valid values: `PayAsYouGo`.
  final pulumi.Input<String> instanceChargeType;
  /// The first ID of the resource.
  final pulumi.Input<String> ipv6GatewayId;
  /// The name of the IPv6 gateway.
  final pulumi.Input<String> ipv6GatewayName;
  /// The specification of the IPv6 gateway. Valid values: `Large`, `Medium` and `Small`. `Small` (default): Free Edition. `Medium`: Enterprise Edition . `Large`: Enhanced Enterprise Edition. The throughput capacity of an IPv6 gateway varies based on the edition. For more information, see [Editions of IPv6 gateways](https://www.alibabacloud.com/help/doc-detail/98926.htm).
  final pulumi.Input<String> spec;
  /// The status of the IPv6 gateway. Valid values: `Available`, `Deleting`, `Pending`.
  final pulumi.Input<String> status;
  /// The ID of the virtual private cloud (VPC) to which the IPv6 gateway belongs.
  final pulumi.Input<String> vpcId;

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
  const GetIpv6GatewaysGateway({
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
      businessStatus: pulumi.Input.fromValue(map['businessStatus'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceChargeType: pulumi.Input.fromValue(map['instanceChargeType'] as String),
      ipv6GatewayId: pulumi.Input.fromValue(map['ipv6GatewayId'] as String),
      ipv6GatewayName: pulumi.Input.fromValue(map['ipv6GatewayName'] as String),
      spec: pulumi.Input.fromValue(map['spec'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

