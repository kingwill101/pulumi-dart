// ignore_for_file: unused_element, unnecessary_cast

class BudgetAmountSpecifiedAmount {
  /// The 3-letter currency code defined in ISO 4217.
  final String? currencyCode;

  /// Number of nano (10^-9) units of the amount.
  /// The value must be between -999,999,999 and +999,999,999
  /// inclusive. If units is positive, nanos must be positive or
  /// zero. If units is zero, nanos can be positive, zero, or
  /// negative. If units is negative, nanos must be negative or
  /// zero. For example $-1.75 is represented as units=-1 and
  /// nanos=-750,000,000.
  final int? nanos;

  /// The whole units of the amount. For example if currencyCode
  /// is "USD", then 1 unit is one US dollar.
  final String? units;

  /// Creates a new [BudgetAmountSpecifiedAmount].
  /// [currencyCode] The 3-letter currency code defined in ISO 4217.
  /// [nanos] Number of nano (10^-9) units of the amount.
  /// [units] The whole units of the amount. For example if currencyCode
  BudgetAmountSpecifiedAmount({
    this.currencyCode,
    this.nanos,
    this.units,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final currencyCodeValue = currencyCode;
    if (currencyCodeValue != null) {
      map['currencyCode'] = currencyCodeValue;
    }
    final nanosValue = nanos;
    if (nanosValue != null) {
      map['nanos'] = nanosValue;
    }
    final unitsValue = units;
    if (unitsValue != null) {
      map['units'] = unitsValue;
    }
    return map;
  }

  factory BudgetAmountSpecifiedAmount.fromMap(Map<String, dynamic> map) {
    return BudgetAmountSpecifiedAmount(
      currencyCode:
          map['currencyCode'] == null ? null : map['currencyCode'] as String,
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      units: map['units'] == null ? null : map['units'] as String,
    );
  }
}
