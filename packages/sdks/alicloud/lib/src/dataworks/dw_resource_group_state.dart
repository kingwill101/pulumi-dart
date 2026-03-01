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
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? defaultVpcId,
    pulumi.Output<String>? defaultVswitchId,
    pulumi.Output<int>? paymentDuration,
    pulumi.Output<String>? paymentDurationUnit,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? remark,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<int>? specification,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      defaultVpcId = pulumi.Input.asOptionalInput<String>(defaultVpcId),
      defaultVswitchId = pulumi.Input.asOptionalInput<String>(defaultVswitchId),
      paymentDuration = pulumi.Input.asOptionalInput<int>(paymentDuration),
      paymentDurationUnit = pulumi.Input.asOptionalInput<String>(paymentDurationUnit),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      remark = pulumi.Input.asOptionalInput<String>(remark),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      specification = pulumi.Input.asOptionalInput<int>(specification),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      defaultVpcId: map['defaultVpcId'] == null ? null : pulumi.Output.create<String>(map['defaultVpcId'] as String),
      defaultVswitchId: map['defaultVswitchId'] == null ? null : pulumi.Output.create<String>(map['defaultVswitchId'] as String),
      paymentDuration: map['paymentDuration'] == null ? null : pulumi.Output.create<int>(map['paymentDuration'] as int),
      paymentDurationUnit: map['paymentDurationUnit'] == null ? null : pulumi.Output.create<String>(map['paymentDurationUnit'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      remark: map['remark'] == null ? null : pulumi.Output.create<String>(map['remark'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      specification: map['specification'] == null ? null : pulumi.Output.create<int>(map['specification'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

