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
  /// &gt; **NOTE:** &gt;
  ///
  /// &gt; **NOTE:** - The instance group name must be no more than 30 characters in length. Start with an uppercase/lowercase letter or Chinese. It cannot start with http:// or https://. Only Chinese, English, numbers, half-width colons (:), underscores (_), periods (.), or hyphens (-) are supported.
  final pulumi.Input<String>? instanceGroupName;

  /// Instance group specifications.
  final pulumi.Input<String>? instanceGroupSpec;

  /// The number of instances in the instance group. The maximum value is 100.
  final pulumi.Input<int>? numberOfInstances;

  /// The network ID.
  /// - Create a shared network instance: Network ID is optional. Enter the network ID whose type is **Shared Network** on the [cloud mobile phone console&gt; Network](https://wya.wuying.aliyun.com/network) page. If the console does not have a shared network, you can fill it in. A shared network is automatically created when the instance group is created.
  /// - Create a VPC instance: the network ID is required. Enter the network ID of `VPC` on the [cloud mobile phone console&gt; Network](https://wya.wuying.aliyun.com/network) page. If the console does not have a VPC network, you need to create a network first.
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
    this.amount,
    this.autoPay,
    this.autoRenew,
    this.chargeType,
    this.gpuAcceleration,
    this.imageId,
    this.instanceGroupName,
    this.instanceGroupSpec,
    this.numberOfInstances,
    this.officeSiteId,
    this.period,
    this.periodUnit,
    this.policyGroupId,
    this.status,
    this.vswitchId,
  });

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
      amount: (() {
        final guardedValue = map['amount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      autoPay: (() {
        final guardedValue = map['autoPay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      autoRenew: (() {
        final guardedValue = map['autoRenew'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      chargeType: (() {
        final guardedValue = map['chargeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gpuAcceleration: (() {
        final guardedValue = map['gpuAcceleration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      imageId: (() {
        final guardedValue = map['imageId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceGroupName: (() {
        final guardedValue = map['instanceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceGroupSpec: (() {
        final guardedValue = map['instanceGroupSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      numberOfInstances: (() {
        final guardedValue = map['numberOfInstances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      officeSiteId: (() {
        final guardedValue = map['officeSiteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      periodUnit: (() {
        final guardedValue = map['periodUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyGroupId: (() {
        final guardedValue = map['policyGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
