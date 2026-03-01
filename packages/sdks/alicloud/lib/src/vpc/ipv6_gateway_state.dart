// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Ipv6Gateway resources.
class Ipv6GatewayState {
  /// The status of the IPv6 gateway.
  final pulumi.Input<String>? businessStatus;
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// The description of the IPv6 gateway. The description must be 2 to 256 characters in length. It cannot start with http:// or https://.
  final pulumi.Input<String>? description;
  /// The expiration time of IPv6 gateway.
  final pulumi.Input<String>? expiredTime;
  /// The charge type of IPv6 gateway.
  final pulumi.Input<String>? instanceChargeType;
  /// Resource primary key attribute field.
  final pulumi.Input<String>? ipv6GatewayId;
  /// The name of the IPv6 gateway. The name must be 2 to 128 characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter but cannot start with http:// or https://.
  final pulumi.Input<String>? ipv6GatewayName;
  /// The ID of the resource group to which the instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// IPv6 gateways do not distinguish between specifications. This parameter is no longer used.
  final pulumi.Input<String>? spec;
  /// The status of the resource. Valid values: Available, Pending and Deleting.
  final pulumi.Input<String>? status;
  /// The tags for the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the virtual private cloud (VPC) for which you want to create the IPv6 gateway.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [Ipv6GatewayState].
  /// [businessStatus] The status of the IPv6 gateway.
  /// [createTime] The creation time of the resource.
  /// [description] The description of the IPv6 gateway. The description must be 2 to 256 characters in length. It cannot start with http:// or https://.
  /// [expiredTime] The expiration time of IPv6 gateway.
  /// [instanceChargeType] The charge type of IPv6 gateway.
  /// [ipv6GatewayId] Resource primary key attribute field.
  /// [ipv6GatewayName] The name of the IPv6 gateway. The name must be 2 to 128 characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter but cannot start with http:// or https://.
  /// [resourceGroupId] The ID of the resource group to which the instance belongs.
  /// [spec] IPv6 gateways do not distinguish between specifications. This parameter is no longer used.
  /// [status] The status of the resource. Valid values: Available, Pending and Deleting.
  /// [tags] The tags for the resource.
  /// [vpcId] The ID of the virtual private cloud (VPC) for which you want to create the IPv6 gateway.
  Ipv6GatewayState({
    pulumi.Output<String>? businessStatus,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? expiredTime,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<String>? ipv6GatewayId,
    pulumi.Output<String>? ipv6GatewayName,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? spec,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
  }) :
      businessStatus = pulumi.Input.asOptionalInput<String>(businessStatus),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      expiredTime = pulumi.Input.asOptionalInput<String>(expiredTime),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      ipv6GatewayId = pulumi.Input.asOptionalInput<String>(ipv6GatewayId),
      ipv6GatewayName = pulumi.Input.asOptionalInput<String>(ipv6GatewayName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      spec = pulumi.Input.asOptionalInput<String>(spec),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessStatus': ?businessStatus,
      'createTime': ?createTime,
      'description': ?description,
      'expiredTime': ?expiredTime,
      'instanceChargeType': ?instanceChargeType,
      'ipv6GatewayId': ?ipv6GatewayId,
      'ipv6GatewayName': ?ipv6GatewayName,
      'resourceGroupId': ?resourceGroupId,
      'spec': ?spec,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory Ipv6GatewayState.fromMap(Map<String, dynamic> map) {
    return Ipv6GatewayState(
      businessStatus: map['businessStatus'] == null ? null : pulumi.Output.create<String>(map['businessStatus'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      expiredTime: map['expiredTime'] == null ? null : pulumi.Output.create<String>(map['expiredTime'] as String),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      ipv6GatewayId: map['ipv6GatewayId'] == null ? null : pulumi.Output.create<String>(map['ipv6GatewayId'] as String),
      ipv6GatewayName: map['ipv6GatewayName'] == null ? null : pulumi.Output.create<String>(map['ipv6GatewayName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      spec: map['spec'] == null ? null : pulumi.Output.create<String>(map['spec'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

