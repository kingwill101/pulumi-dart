// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudphoneinstance_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_cloudphoneinstance_group_group_args_doc}
class GroupArgs {
  /// The number of instance groups. The default value is 1 and the maximum value is 100.
  final pulumi.Input<int>? amount;
  /// Whether to pay automatically. The default is false.
  final pulumi.Input<bool>? autoPay;
  /// Whether to enable automatic renewal. The default is false.
  final pulumi.Input<bool>? autoRenew;
  /// The billing type.
  final pulumi.Input<String>? chargeType;
  /// Whether to enable GPU acceleration. The default value is false.
  /// - true: On.
  /// - false: closed.
  final pulumi.Input<bool>? gpuAcceleration;
  /// The image ID.
  final pulumi.Input<String> imageId;
  /// The instance group name
  ///
  /// > **NOTE:** >
  ///
  /// > **NOTE:** - The instance group name must be no more than 30 characters in length. Start with an uppercase/lowercase letter or Chinese. It cannot start with http:// or https://. Only Chinese, English, numbers, half-width colons (:), underscores (_), periods (.), or hyphens (-) are supported.
  final pulumi.Input<String>? instanceGroupName;
  /// Instance group specifications.
  final pulumi.Input<String> instanceGroupSpec;
  /// The number of instances in the instance group. The maximum value is 100.
  final pulumi.Input<int>? numberOfInstances;
  /// The network ID.
  /// - Create a shared network instance: Network ID is optional. Enter the network ID whose type is **Shared Network** on the [cloud mobile phone console> Network](https://wya.wuying.aliyun.com/network) page. If the console does not have a shared network, you can fill it in. A shared network is automatically created when the instance group is created.
  /// - Create a VPC instance: the network ID is required. Enter the network ID of `VPC` on the [cloud mobile phone console> Network](https://wya.wuying.aliyun.com/network) page. If the console does not have a VPC network, you need to create a network first.
  final pulumi.Input<String>? officeSiteId;
  /// The duration of the resource purchase. The unit is specified by PeriodUnit.
  final pulumi.Input<int>? period;
  /// The unit of time for purchasing resources.
  final pulumi.Input<String>? periodUnit;
  /// The policy ID. You can query the list of policies by calling ListPolicyGroups.
  final pulumi.Input<String>? policyGroupId;
  /// The vSwitch ID.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GroupArgs].
  /// [amount] The number of instance groups. The default value is 1 and the maximum value is 100.
  /// [autoPay] Whether to pay automatically. The default is false.
  /// [autoRenew] Whether to enable automatic renewal. The default is false.
  /// [chargeType] The billing type.
  /// [gpuAcceleration] Whether to enable GPU acceleration. The default value is false.
  /// [imageId] The image ID.
  /// [instanceGroupName] The instance group name
  /// [instanceGroupSpec] Instance group specifications.
  /// [numberOfInstances] The number of instances in the instance group. The maximum value is 100.
  /// [officeSiteId] The network ID.
  /// [period] The duration of the resource purchase. The unit is specified by PeriodUnit.
  /// [periodUnit] The unit of time for purchasing resources.
  /// [policyGroupId] The policy ID. You can query the list of policies by calling ListPolicyGroups.
  /// [vswitchId] The vSwitch ID.
  GroupArgs({
    this.amount,
    this.autoPay,
    this.autoRenew,
    this.chargeType,
    this.gpuAcceleration,
    required this.imageId,
    this.instanceGroupName,
    required this.instanceGroupSpec,
    this.numberOfInstances,
    this.officeSiteId,
    this.period,
    this.periodUnit,
    this.policyGroupId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'autoPay': ?autoPay,
      'autoRenew': ?autoRenew,
      'chargeType': ?chargeType,
      'gpuAcceleration': ?gpuAcceleration,
      'imageId': imageId,
      'instanceGroupName': ?instanceGroupName,
      'instanceGroupSpec': instanceGroupSpec,
      'numberOfInstances': ?numberOfInstances,
      'officeSiteId': ?officeSiteId,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'policyGroupId': ?policyGroupId,
      'vswitchId': ?vswitchId,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      amount: map['amount'] == null ? null : (map['amount'] as int).input(),
      autoPay: map['autoPay'] == null ? null : (map['autoPay'] as bool).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      chargeType: map['chargeType'] == null ? null : (map['chargeType'] as String).input(),
      gpuAcceleration: map['gpuAcceleration'] == null ? null : (map['gpuAcceleration'] as bool).input(),
      imageId: (map['imageId'] as String).input(),
      instanceGroupName: map['instanceGroupName'] == null ? null : (map['instanceGroupName'] as String).input(),
      instanceGroupSpec: (map['instanceGroupSpec'] as String).input(),
      numberOfInstances: map['numberOfInstances'] == null ? null : (map['numberOfInstances'] as int).input(),
      officeSiteId: map['officeSiteId'] == null ? null : (map['officeSiteId'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      periodUnit: map['periodUnit'] == null ? null : (map['periodUnit'] as String).input(),
      policyGroupId: map['policyGroupId'] == null ? null : (map['policyGroupId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}

