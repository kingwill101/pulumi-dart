// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataworks_dw_resource_group_dw_resource_group_args_doc}
/// The set of arguments for DwResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_dataworks_dw_resource_group_dw_resource_group_args_doc}
class DwResourceGroupArgs {
  /// Whether to automatically renew. The default value is false.
  final pulumi.Input<bool>? autoRenew;

  /// The VPC ID of the default network resource.
  final pulumi.Input<String> defaultVpcId;

  /// The ID of the vswitch bound to the network resource by default.
  final pulumi.Input<String> defaultVswitchId;

  /// When the payment method is Prepaid, the unit is PaymentDurationUnit.
  final pulumi.Input<int>? paymentDuration;

  /// When the payment method is Prepaid, the payment duration unit, Month is Month, Year is Year, and there is no other optional value.
  final pulumi.Input<String>? paymentDurationUnit;

  /// The billing type of the resource group. PrePaid is Subscription, and PostPaid is Pay-As-You-Go.
  final pulumi.Input<String>? paymentType;

  /// Resource Group Comments
  final pulumi.Input<String> remark;

  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;

  /// Resource group name
  final pulumi.Input<String>? resourceGroupName;

  /// Package year and package month resource group specifications, unit CU
  final pulumi.Input<int>? specification;

  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DwResourceGroupArgs].
  /// [autoRenew] Whether to automatically renew. The default value is false.
  /// [defaultVpcId] The VPC ID of the default network resource.
  /// [defaultVswitchId] The ID of the vswitch bound to the network resource by default.
  /// [paymentDuration] When the payment method is Prepaid, the unit is PaymentDurationUnit.
  /// [paymentDurationUnit] When the payment method is Prepaid, the payment duration unit, Month is Month, Year is Year, and there is no other optional value.
  /// [paymentType] The billing type of the resource group. PrePaid is Subscription, and PostPaid is Pay-As-You-Go.
  /// [remark] Resource Group Comments
  /// [resourceGroupId] The ID of the resource group
  /// [resourceGroupName] Resource group name
  /// [specification] Package year and package month resource group specifications, unit CU
  /// [tags] The tag of the resource
  DwResourceGroupArgs({
    this.autoRenew,
    required this.defaultVpcId,
    required this.defaultVswitchId,
    this.paymentDuration,
    this.paymentDurationUnit,
    this.paymentType,
    required this.remark,
    this.resourceGroupId,
    this.resourceGroupName,
    this.specification,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'defaultVpcId': defaultVpcId,
      'defaultVswitchId': defaultVswitchId,
      'paymentDuration': ?paymentDuration,
      'paymentDurationUnit': ?paymentDurationUnit,
      'paymentType': ?paymentType,
      'remark': remark,
      'resourceGroupId': ?resourceGroupId,
      'resourceGroupName': ?resourceGroupName,
      'specification': ?specification,
      'tags': ?tags,
    };
  }

  factory DwResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return DwResourceGroupArgs(
      autoRenew: (() {
        final guardedValue = map['autoRenew'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      defaultVpcId: pulumi.Input.fromValue(map['defaultVpcId'] as String),
      defaultVswitchId: pulumi.Input.fromValue(
        map['defaultVswitchId'] as String,
      ),
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
      remark: pulumi.Input.fromValue(map['remark'] as String),
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
