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
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<int>? period;

  /// Package name.
  ///
  /// Chinese website account:
  final pulumi.Input<String>? planName;

  /// The DNS setup option for the website. Valid values:
  /// - `NS`
  /// - `CNAME`
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
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
    this.autoPay,
    this.autoRenew,
    this.coverage,
    this.paymentType,
    this.period,
    this.planName,
    this.type,
  });

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
      coverage: (() {
        final guardedValue = map['coverage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      planName: (() {
        final guardedValue = map['planName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
