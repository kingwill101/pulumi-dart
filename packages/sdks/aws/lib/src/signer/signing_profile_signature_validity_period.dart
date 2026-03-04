// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SigningProfileSignatureValidityPeriod {
  /// The time unit for signature validity. Valid values: `DAYS`, `MONTHS`, `YEARS`.
  final pulumi.Input<String> type;

  /// The numerical value of the time unit for signature validity.
  final pulumi.Input<int> value;

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
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
