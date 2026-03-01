// ignore_for_file: unused_element, unnecessary_cast


/// The amount.
class AmountResponse {
  /// The type of currency being used for the value.
  final String? currency;
  /// Amount value.
  final double? value;

  /// Creates a new [AmountResponse].
  /// [currency] The type of currency being used for the value.
  /// [value] Amount value.
  AmountResponse({
    this.currency,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currency': ?currency,
      'value': ?value,
    };
  }

  factory AmountResponse.fromMap(Map<String, dynamic> map) {
    return AmountResponse(
      currency: map['currency'] == null ? null : map['currency'] as String,
      value: map['value'] == null ? null : map['value'] as double,
    );
  }
}

