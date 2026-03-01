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
    bool? autoRenew,
    required String defaultVpcId,
    required String defaultVswitchId,
    int? paymentDuration,
    String? paymentDurationUnit,
    String? paymentType,
    required String remark,
    String? resourceGroupId,
    String? resourceGroupName,
    int? specification,
    Map<String, String>? tags,
  }) :
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      defaultVpcId = pulumi.Input.asInput<String>(defaultVpcId),
      defaultVswitchId = pulumi.Input.asInput<String>(defaultVswitchId),
      paymentDuration = pulumi.Input.asOptionalInput<int>(paymentDuration),
      paymentDurationUnit = pulumi.Input.asOptionalInput<String>(paymentDurationUnit),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      remark = pulumi.Input.asInput<String>(remark),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      specification = pulumi.Input.asOptionalInput<int>(specification),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      defaultVpcId: map['defaultVpcId'] as String,
      defaultVswitchId: map['defaultVswitchId'] as String,
      paymentDuration: map['paymentDuration'] == null ? null : map['paymentDuration'] as int,
      paymentDurationUnit: map['paymentDurationUnit'] == null ? null : map['paymentDurationUnit'] as String,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      remark: map['remark'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      resourceGroupName: map['resourceGroupName'] == null ? null : map['resourceGroupName'] as String,
      specification: map['specification'] == null ? null : map['specification'] as int,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

