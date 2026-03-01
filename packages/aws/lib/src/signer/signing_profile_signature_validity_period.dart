// ignore_for_file: unused_element, unnecessary_cast

class SigningProfileSignatureValidityPeriod {
  /// The time unit for signature validity. Valid values: `DAYS`, `MONTHS`, `YEARS`.
  final String type;

  /// The numerical value of the time unit for signature validity.
  final int value;

  /// Creates a new [SigningProfileSignatureValidityPeriod].
  /// [type] The time unit for signature validity. Valid values: `DAYS`, `MONTHS`, `YEARS`.
  /// [value] The numerical value of the time unit for signature validity.
  SigningProfileSignatureValidityPeriod({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type, 'value': value};
  }

  factory SigningProfileSignatureValidityPeriod.fromMap(
    Map<String, dynamic> map,
  ) {
    return SigningProfileSignatureValidityPeriod(
      type: map['type'] as String,
      value: map['value'] as int,
    );
  }
}
