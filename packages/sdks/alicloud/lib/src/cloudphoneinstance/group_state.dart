// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Group resources.
class GroupState {
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
  final pulumi.Input<String>? imageId;
  /// The instance group name
  ///
  /// > **NOTE:** >
  ///
  /// > **NOTE:** - The instance group name must be no more than 30 characters in length. Start with an uppercase/lowercase letter or Chinese. It cannot start with http:// or https://. Only Chinese, English, numbers, half-width colons (:), underscores (_), periods (.), or hyphens (-) are supported.
  final pulumi.Input<String>? instanceGroupName;
  /// Instance group specifications.
  final pulumi.Input<String>? instanceGroupSpec;
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
  /// Instance group status
  final pulumi.Input<String>? status;
  /// The vSwitch ID.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [GroupState].
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
  /// [status] Instance group status
  /// [vswitchId] The vSwitch ID.
  GroupState({
    pulumi.Output<int>? amount,
    pulumi.Output<bool>? autoPay,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<String>? chargeType,
    pulumi.Output<bool>? gpuAcceleration,
    pulumi.Output<String>? imageId,
    pulumi.Output<String>? instanceGroupName,
    pulumi.Output<String>? instanceGroupSpec,
    pulumi.Output<int>? numberOfInstances,
    pulumi.Output<String>? officeSiteId,
    pulumi.Output<int>? period,
    pulumi.Output<String>? periodUnit,
    pulumi.Output<String>? policyGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vswitchId,
  }) :
      amount = pulumi.Input.asOptionalInput<int>(amount),
      autoPay = pulumi.Input.asOptionalInput<bool>(autoPay),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      chargeType = pulumi.Input.asOptionalInput<String>(chargeType),
      gpuAcceleration = pulumi.Input.asOptionalInput<bool>(gpuAcceleration),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      instanceGroupName = pulumi.Input.asOptionalInput<String>(instanceGroupName),
      instanceGroupSpec = pulumi.Input.asOptionalInput<String>(instanceGroupSpec),
      numberOfInstances = pulumi.Input.asOptionalInput<int>(numberOfInstances),
      officeSiteId = pulumi.Input.asOptionalInput<String>(officeSiteId),
      period = pulumi.Input.asOptionalInput<int>(period),
      periodUnit = pulumi.Input.asOptionalInput<String>(periodUnit),
      policyGroupId = pulumi.Input.asOptionalInput<String>(policyGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'autoPay': ?autoPay,
      'autoRenew': ?autoRenew,
      'chargeType': ?chargeType,
      'gpuAcceleration': ?gpuAcceleration,
      'imageId': ?imageId,
      'instanceGroupName': ?instanceGroupName,
      'instanceGroupSpec': ?instanceGroupSpec,
      'numberOfInstances': ?numberOfInstances,
      'officeSiteId': ?officeSiteId,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'policyGroupId': ?policyGroupId,
      'status': ?status,
      'vswitchId': ?vswitchId,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      amount: map['amount'] == null ? null : pulumi.Output.create<int>(map['amount'] as int),
      autoPay: map['autoPay'] == null ? null : pulumi.Output.create<bool>(map['autoPay'] as bool),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      chargeType: map['chargeType'] == null ? null : pulumi.Output.create<String>(map['chargeType'] as String),
      gpuAcceleration: map['gpuAcceleration'] == null ? null : pulumi.Output.create<bool>(map['gpuAcceleration'] as bool),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      instanceGroupName: map['instanceGroupName'] == null ? null : pulumi.Output.create<String>(map['instanceGroupName'] as String),
      instanceGroupSpec: map['instanceGroupSpec'] == null ? null : pulumi.Output.create<String>(map['instanceGroupSpec'] as String),
      numberOfInstances: map['numberOfInstances'] == null ? null : pulumi.Output.create<int>(map['numberOfInstances'] as int),
      officeSiteId: map['officeSiteId'] == null ? null : pulumi.Output.create<String>(map['officeSiteId'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      periodUnit: map['periodUnit'] == null ? null : pulumi.Output.create<String>(map['periodUnit'] as String),
      policyGroupId: map['policyGroupId'] == null ? null : pulumi.Output.create<String>(map['policyGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

