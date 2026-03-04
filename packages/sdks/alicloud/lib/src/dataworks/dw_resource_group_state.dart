// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DwResourceGroup resources.
class DwResourceGroupState {
  /// Whether to automatically renew. The default value is false.
  final pulumi.Input<bool>? autoRenew;

  /// Resource group creation time
  final pulumi.Input<int>? createTime;

  /// The VPC ID of the default network resource.
  final pulumi.Input<String>? defaultVpcId;

  /// The ID of the vswitch bound to the network resource by default.
  final pulumi.Input<String>? defaultVswitchId;

  /// When the payment method is Prepaid, the unit is PaymentDurationUnit.
  final pulumi.Input<int>? paymentDuration;

  /// When the payment method is Prepaid, the payment duration unit, Month is Month, Year is Year, and there is no other optional value.
  final pulumi.Input<String>? paymentDurationUnit;

  /// The billing type of the resource group. PrePaid is Subscription, and PostPaid is Pay-As-You-Go.
  final pulumi.Input<String>? paymentType;

  /// Resource Group Comments
  final pulumi.Input<String>? remark;

  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;

  /// Resource group name
  final pulumi.Input<String>? resourceGroupName;

  /// Package year and package month resource group specifications, unit CU
  final pulumi.Input<int>? specification;

  /// Resource group status:
  final pulumi.Input<String>? status;

  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DwResourceGroupState].
  /// [autoRenew] Whether to automatically renew. The default value is false.
  /// [createTime] Resource group creation time
  /// [defaultVpcId] The VPC ID of the default network resource.
  /// [defaultVswitchId] The ID of the vswitch bound to the network resource by default.
  /// [paymentDuration] When the payment method is Prepaid, the unit is PaymentDurationUnit.
  /// [paymentDurationUnit] When the payment method is Prepaid, the payment duration unit, Month is Month, Year is Year, and there is no other optional value.
  /// [paymentType] The billing type of the resource group. PrePaid is Subscription, and PostPaid is Pay-As-You-Go.
  /// [remark] Resource Group Comments
  /// [resourceGroupId] The ID of the resource group
  /// [resourceGroupName] Resource group name
  /// [specification] Package year and package month resource group specifications, unit CU
  /// [status] Resource group status:
  /// [tags] The tag of the resource
  DwResourceGroupState({
    this.autoRenew,
    this.createTime,
    this.defaultVpcId,
    this.defaultVswitchId,
    this.paymentDuration,
    this.paymentDurationUnit,
    this.paymentType,
    this.remark,
    this.resourceGroupId,
    this.resourceGroupName,
    this.specification,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'createTime': ?createTime,
      'defaultVpcId': ?defaultVpcId,
      'defaultVswitchId': ?defaultVswitchId,
      'paymentDuration': ?paymentDuration,
      'paymentDurationUnit': ?paymentDurationUnit,
      'paymentType': ?paymentType,
      'remark': ?remark,
      'resourceGroupId': ?resourceGroupId,
      'resourceGroupName': ?resourceGroupName,
      'specification': ?specification,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory DwResourceGroupState.fromMap(Map<String, dynamic> map) {
    return DwResourceGroupState(
      autoRenew: (() {
        final guardedValue = map['autoRenew'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      defaultVpcId: (() {
        final guardedValue = map['defaultVpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultVswitchId: (() {
        final guardedValue = map['defaultVswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentDuration: (() {
        final guardedValue = map['paymentDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      paymentDurationUnit: (() {
        final guardedValue = map['paymentDurationUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remark: (() {
        final guardedValue = map['remark'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      specification: (() {
        final guardedValue = map['specification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
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
    );
  }
}
