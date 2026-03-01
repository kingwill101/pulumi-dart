// ignore_for_file: unused_element, unnecessary_cast


/// The validation results. There's validation on package when it's created or updated.
class PackageValidationResultResponse {
  /// Error information.
  final List<String> errors;
  /// Indicates whether the package passed the validation.
  final bool isValid;
  /// Validation name.
  final String validationName;

  /// Creates a new [PackageValidationResultResponse].
  /// [errors] Error information.
  /// [isValid] Indicates whether the package passed the validation.
  /// [validationName] Validation name.
  PackageValidationResultResponse({
    required this.errors,
    required this.isValid,
    required this.validationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': errors,
      'isValid': isValid,
      'validationName': validationName,
    };
  }

  factory PackageValidationResultResponse.fromMap(Map<String, dynamic> map) {
    return PackageValidationResultResponse(
      errors: (map['errors'] as List).cast<String>(),
      isValid: map['isValid'] as bool,
      validationName: map['validationName'] as String,
    );
  }
}

