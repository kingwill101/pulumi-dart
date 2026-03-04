// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// N-Cross validations are specified by user.
class CustomNCrossValidationsResponse {
  /// Determines how N-Cross validations value is determined.
  /// Expected value is 'Custom'.
  final pulumi.Input<String> mode;

  /// [Required] N-Cross validations value.
  final pulumi.Input<int> value;

  /// Creates a new [CustomNCrossValidationsResponse].
  /// [mode] Determines how N-Cross validations value is determined.
  /// [value] [Required] N-Cross validations value.
  CustomNCrossValidationsResponse({required this.mode, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': mode, 'value': value};
  }

  factory CustomNCrossValidationsResponse.fromMap(Map<String, dynamic> map) {
    return CustomNCrossValidationsResponse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
