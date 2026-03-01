// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_rate_plan_instance_rate_plan_instance_args_doc}
/// The set of arguments for RatePlanInstance.
/// {@endtemplate}
/// {@macro pulumi_esa_rate_plan_instance_rate_plan_instance_args_doc}
class RatePlanInstanceArgs {
  final pulumi.Input<bool>? autoPay;
  /// Auto-renewal:
  final pulumi.Input<bool>? autoRenew;
  /// The service locations for the websites that can be associated with the plan. Multiple values are separated by commas (,). Valid values:
  final pulumi.Input<String>? coverage;
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
  /// The DNS setup option for the website. Valid values:
  /// - `NS`
  /// - `CNAME`
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? type;

  /// Creates a new [RatePlanInstanceArgs].
  /// [autoPay] Optional.
  /// [autoRenew] Auto-renewal:
  /// [coverage] The service locations for the websites that can be associated with the plan. Multiple values are separated by commas (,). Valid values:
  /// [paymentType] The billing method. Valid values:
  /// [period] Subscription period (in months).
  /// [planName] Package name.
  /// [type] The DNS setup option for the website. Valid values:
  RatePlanInstanceArgs({
    pulumi.Output<bool>? autoPay,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<String>? coverage,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? planName,
    pulumi.Output<String>? type,
  }) :
      autoPay = pulumi.Input.asOptionalInput<bool>(autoPay),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      coverage = pulumi.Input.asOptionalInput<String>(coverage),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      planName = pulumi.Input.asOptionalInput<String>(planName),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'autoRenew': ?autoRenew,
      'coverage': ?coverage,
      'paymentType': ?paymentType,
      'period': ?period,
      'planName': ?planName,
      'type': ?type,
    };
  }

  factory RatePlanInstanceArgs.fromMap(Map<String, dynamic> map) {
    return RatePlanInstanceArgs(
      autoPay: map['autoPay'] == null ? null : pulumi.Output.create<bool>(map['autoPay'] as bool),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      coverage: map['coverage'] == null ? null : pulumi.Output.create<String>(map['coverage'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      planName: map['planName'] == null ? null : pulumi.Output.create<String>(map['planName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

