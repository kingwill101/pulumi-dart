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
    this.businessStatus,
    this.createTime,
    this.description,
    this.expiredTime,
    this.instanceChargeType,
    this.ipv6GatewayId,
    this.ipv6GatewayName,
    this.resourceGroupId,
    this.spec,
    this.status,
    this.tags,
    this.vpcId,
  });

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
      businessStatus: (() {
        final guardedValue = map['businessStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expiredTime: (() {
        final guardedValue = map['expiredTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceChargeType: (() {
        final guardedValue = map['instanceChargeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6GatewayId: (() {
        final guardedValue = map['ipv6GatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6GatewayName: (() {
        final guardedValue = map['ipv6GatewayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spec: (() {
        final guardedValue = map['spec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
