// ignore_for_file: unused_element, unnecessary_cast

/// Represents an amount of money with its currency type.
class GoogleTypeMoneyResponseBillingbudgetsV1 {
  /// The three-letter currency code defined in ISO 4217.
  final String currencyCode;

  /// Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be positive or zero. If `units` is zero, `nanos` can be positive, zero, or negative. If `units` is negative, `nanos` must be negative or zero. For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
  final int nanos;

  /// The whole units of the amount. For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
  final String units;

  GoogleTypeMoneyResponseBillingbudgetsV1({
    required this.currencyCode,
    required this.nanos,
    required this.units,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['currencyCode'] = currencyCode;
    map['nanos'] = nanos;
    map['units'] = units;
    return map;
  }

  factory GoogleTypeMoneyResponseBillingbudgetsV1.fromMap(
      Map<String, dynamic> map) {
    return GoogleTypeMoneyResponseBillingbudgetsV1(
      currencyCode: map['currencyCode'] as String,
      nanos: map['nanos'] as int,
      units: map['units'] as String,
    );
  }
}
