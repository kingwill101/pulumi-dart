// ignore_for_file: unused_element, unnecessary_cast


/// N-Cross validations are specified by user.
class CustomNCrossValidationsResponse {
  /// Determines how N-Cross validations value is determined.
  /// Expected value is 'Custom'.
  final String mode;
  /// [Required] N-Cross validations value.
  final int value;

  /// Creates a new [CustomNCrossValidationsResponse].
  /// [mode] Determines how N-Cross validations value is determined.
  /// [value] [Required] N-Cross validations value.
  CustomNCrossValidationsResponse({
    required this.mode,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'value': value,
    };
  }

  factory CustomNCrossValidationsResponse.fromMap(Map<String, dynamic> map) {
    return CustomNCrossValidationsResponse(
      mode: map['mode'] as String,
      value: map['value'] as int,
    );
  }
}

