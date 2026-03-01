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
    pulumi.Output<bool>? autoPay,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<String>? coverage,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? instanceStatus,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? planName,
    pulumi.Output<String>? status,
    pulumi.Output<String>? type,
  }) :
      autoPay = pulumi.Input.asOptionalInput<bool>(autoPay),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      coverage = pulumi.Input.asOptionalInput<String>(coverage),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      instanceStatus = pulumi.Input.asOptionalInput<String>(instanceStatus),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      planName = pulumi.Input.asOptionalInput<String>(planName),
      status = pulumi.Input.asOptionalInput<String>(status),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      autoPay: map['autoPay'] == null ? null : pulumi.Output.create<bool>(map['autoPay'] as bool),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      coverage: map['coverage'] == null ? null : pulumi.Output.create<String>(map['coverage'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      instanceStatus: map['instanceStatus'] == null ? null : pulumi.Output.create<String>(map['instanceStatus'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      planName: map['planName'] == null ? null : pulumi.Output.create<String>(map['planName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

