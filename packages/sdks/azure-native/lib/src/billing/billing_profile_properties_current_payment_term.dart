// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The current payment term of the billing profile.
class BillingProfilePropertiesCurrentPaymentTerm {
  /// The date on when the defined 'Payment Term' will end and is always in UTC.
  final pulumi.Input<String>? endDate;
  /// The date on when the defined 'Payment Term' will be effective from and is always in UTC.
  final pulumi.Input<String>? startDate;
  /// Represents duration in netXX format. Always in days.
  final pulumi.Input<String>? term;

  /// Creates a new [BillingProfilePropertiesCurrentPaymentTerm].
  /// [endDate] The date on when the defined 'Payment Term' will end and is always in UTC.
  /// [startDate] The date on when the defined 'Payment Term' will be effective from and is always in UTC.
  /// [term] Represents duration in netXX format. Always in days.
  BillingProfilePropertiesCurrentPaymentTerm({
    this.endDate,
    this.startDate,
    this.term,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': ?endDate,
      'startDate': ?startDate,
      'term': ?term,
    };
  }

  factory BillingProfilePropertiesCurrentPaymentTerm.fromMap(Map<String, dynamic> map) {
    return BillingProfilePropertiesCurrentPaymentTerm(
      endDate: map['endDate'] == null ? null : (map['endDate']! as String).input(),
      startDate: map['startDate'] == null ? null : (map['startDate']! as String).input(),
      term: map['term'] == null ? null : (map['term']! as String).input(),
    );
  }
}

