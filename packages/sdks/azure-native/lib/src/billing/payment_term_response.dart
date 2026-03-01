// ignore_for_file: unused_element, unnecessary_cast


/// The properties of payment term.
class PaymentTermResponse {
  /// The date on when the defined 'Payment Term' will end and is always in UTC.
  final String? endDate;
  /// Indicates payment term is the standard payment term.
  final bool isDefault;
  /// The date on when the defined 'Payment Term' will be effective from and is always in UTC.
  final String? startDate;
  /// Represents duration in netXX format. Always in days.
  final String? term;

  /// Creates a new [PaymentTermResponse].
  /// [endDate] The date on when the defined 'Payment Term' will end and is always in UTC.
  /// [isDefault] Indicates payment term is the standard payment term.
  /// [startDate] The date on when the defined 'Payment Term' will be effective from and is always in UTC.
  /// [term] Represents duration in netXX format. Always in days.
  PaymentTermResponse({
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

  factory PaymentTermResponse.fromMap(Map<String, dynamic> map) {
    return PaymentTermResponse(
      endDate: map['endDate'] == null ? null : map['endDate'] as String,
      isDefault: map['isDefault'] as bool,
      startDate: map['startDate'] == null ? null : map['startDate'] as String,
      term: map['term'] == null ? null : map['term'] as String,
    );
  }
}

