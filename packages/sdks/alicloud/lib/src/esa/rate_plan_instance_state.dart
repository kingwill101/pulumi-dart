// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RatePlanInstance resources.
class RatePlanInstanceState {
  final pulumi.Input<bool>? autoPay;
  /// Auto-renewal:
  final pulumi.Input<bool>? autoRenew;
  /// The service locations for the websites that can be associated with the plan. Multiple values are separated by commas (,). Valid values:
  final pulumi.Input<String>? coverage;
  /// The time when the plan was purchased.
  final pulumi.Input<String>? createTime;
  /// The instance status.
  final pulumi.Input<String>? instanceStatus;
  /// The billing method. Valid values:
  /// - `Subscription`: subscription.
  final pulumi.Input<String>? paymentType;
  /// Subscription period (in months).
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? period;
  /// Package name.
  ///
  /// Chinese website account:
  final pulumi.Input<String>? planName;
  /// The plan status. , the plan is unavailable.
  final pulumi.Input<String>? status;
  /// The DNS setup option for the website. Valid values:
  /// - `NS`
  /// - `CNAME`
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? type;

  /// Creates a new [RatePlanInstanceState].
  /// [autoPay] Optional.
  /// [autoRenew] Auto-renewal:
  /// [coverage] The service locations for the websites that can be associated with the plan. Multiple values are separated by commas (,). Valid values:
  /// [createTime] The time when the plan was purchased.
  /// [instanceStatus] The instance status.
  /// [paymentType] The billing method. Valid values:
  /// [period] Subscription period (in months).
  /// [planName] Package name.
  /// [status] The plan status. , the plan is unavailable.
  /// [type] The DNS setup option for the website. Valid values:
  RatePlanInstanceState({
    this.autoPay,
    this.autoRenew,
    this.coverage,
    this.createTime,
    this.instanceStatus,
    this.paymentType,
    this.period,
    this.planName,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'autoRenew': ?autoRenew,
      'coverage': ?coverage,
      'createTime': ?createTime,
      'instanceStatus': ?instanceStatus,
      'paymentType': ?paymentType,
      'period': ?period,
      'planName': ?planName,
      'status': ?status,
      'type': ?type,
    };
  }

  factory RatePlanInstanceState.fromMap(Map<String, dynamic> map) {
    return RatePlanInstanceState(
      autoPay: map['autoPay'] == null ? null : (map['autoPay'] as bool).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      coverage: map['coverage'] == null ? null : (map['coverage'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      instanceStatus: map['instanceStatus'] == null ? null : (map['instanceStatus'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      planName: map['planName'] == null ? null : (map['planName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

