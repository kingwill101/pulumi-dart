// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The current payment term of the billing profile.
class BillingProfilePropertiesCurrentPaymentTermResponse {
  /// The date on when the defined 'Payment Term' will end and is always in UTC.
  final pulumi.Input<String>? endDate;
  /// Indicates payment term is the standard payment term.
  final pulumi.Input<bool> isDefault;
  /// The date on when the defined 'Payment Term' will be effective from and is always in UTC.
  final pulumi.Input<String>? startDate;
  /// Represents duration in netXX format. Always in days.
  final pulumi.Input<String>? term;

  /// Creates a new [BillingProfilePropertiesCurrentPaymentTermResponse].
  /// [endDate] The date on when the defined 'Payment Term' will end and is always in UTC.
  /// [isDefault] Indicates payment term is the standard payment term.
  /// [startDate] The date on when the defined 'Payment Term' will be effective from and is always in UTC.
  /// [term] Represents duration in netXX format. Always in days.
  const BillingProfilePropertiesCurrentPaymentTermResponse({
    this.endDate,
    required this.isDefault,
    this.startDate,
    this.term,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': ?endDate,
      'isDefault': isDefault,
      'startDate': ?startDate,
      'term': ?term,
    };
  }

  factory BillingProfilePropertiesCurrentPaymentTermResponse.fromMap(Map<String, dynamic> map) {
    return BillingProfilePropertiesCurrentPaymentTermResponse(
      endDate: (() { final guardedValue = map['endDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefault: pulumi.Input.fromValue(map['isDefault'] as bool),
      startDate: (() { final guardedValue = map['startDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      term: (() { final guardedValue = map['term']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
