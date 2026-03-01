// ignore_for_file: unused_element, unnecessary_cast


/// The current payment term of the billing profile.
class BillingProfilePropertiesCurrentPaymentTerm {
  /// The date on when the defined 'Payment Term' will end and is always in UTC.
  final String? endDate;
  /// The date on when the defined 'Payment Term' will be effective from and is always in UTC.
  final String? startDate;
  /// Represents duration in netXX format. Always in days.
  final String? term;

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
      endDate: map['endDate'] == null ? null : map['endDate'] as String,
      startDate: map['startDate'] == null ? null : map['startDate'] as String,
      term: map['term'] == null ? null : map['term'] as String,
    );
  }
}

