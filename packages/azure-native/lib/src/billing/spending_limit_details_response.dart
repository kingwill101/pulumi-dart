// ignore_for_file: unused_element, unnecessary_cast


/// The billing profile spending limit.
class SpendingLimitDetailsResponse {
  /// The initial amount for the billing profile.
  final double? amount;
  /// The currency in which the charges for the billing profile are billed.
  final String? currency;
  /// The date when this spending limit is no longer in effect.
  final String? endDate;
  /// The date when this spending limit goes into effect.
  final String? startDate;
  /// The status of current spending limit.
  final String? status;
  /// The type of spending limit.
  final String? type;

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
      amount: map['amount'] == null ? null : map['amount'] as double,
      currency: map['currency'] == null ? null : map['currency'] as String,
      endDate: map['endDate'] == null ? null : map['endDate'] as String,
      startDate: map['startDate'] == null ? null : map['startDate'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

