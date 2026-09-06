// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// N-Cross validations are specified by user.
class CustomNCrossValidations {
  /// Determines how N-Cross validations value is determined.
  /// Expected value is 'Custom'.
  final pulumi.Input<String> mode;
  /// [Required] N-Cross validations value.
  final pulumi.Input<int> value;

  /// Creates a new [CustomNCrossValidations].
  /// [mode] Determines how N-Cross validations value is determined.
  /// [value] [Required] N-Cross validations value.
  const CustomNCrossValidations({
    required this.mode,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'value': value,
    };
  }

  factory CustomNCrossValidations.fromMap(Map<String, dynamic> map) {
    return CustomNCrossValidations(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      value: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['value'])),
    );
  }
}
