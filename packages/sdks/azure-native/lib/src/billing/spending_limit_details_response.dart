// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The billing profile spending limit.
class SpendingLimitDetailsResponse {
  /// The initial amount for the billing profile.
  final pulumi.Input<double>? amount;

  /// The currency in which the charges for the billing profile are billed.
  final pulumi.Input<String>? currency;

  /// The date when this spending limit is no longer in effect.
  final pulumi.Input<String>? endDate;

  /// The date when this spending limit goes into effect.
  final pulumi.Input<String>? startDate;

  /// The status of current spending limit.
  final pulumi.Input<String>? status;

  /// The type of spending limit.
  final pulumi.Input<String>? type;

  /// Creates a new [SpendingLimitDetailsResponse].
  /// [amount] The initial amount for the billing profile.
  /// [currency] The currency in which the charges for the billing profile are billed.
  /// [endDate] The date when this spending limit is no longer in effect.
  /// [startDate] The date when this spending limit goes into effect.
  /// [status] The status of current spending limit.
  /// [type] The type of spending limit.
  SpendingLimitDetailsResponse({
    this.amount,
    this.currency,
    this.endDate,
    this.startDate,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'currency': ?currency,
      'endDate': ?endDate,
      'startDate': ?startDate,
      'status': ?status,
      'type': ?type,
    };
  }

  factory SpendingLimitDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SpendingLimitDetailsResponse(
      amount: (() {
        final guardedValue = map['amount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      currency: (() {
        final guardedValue = map['currency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endDate: (() {
        final guardedValue = map['endDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startDate: (() {
        final guardedValue = map['startDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
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
