// ignore_for_file: unused_element, unnecessary_cast


class CustomModelValidationDataConfigValidator {
  /// The S3 URI where the validation data is stored.
  final String s3Uri;

  /// Creates a new [CustomModelValidationDataConfigValidator].
  /// [s3Uri] The S3 URI where the validation data is stored.
  CustomModelValidationDataConfigValidator({
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Uri': s3Uri,
    };
  }

  factory CustomModelValidationDataConfigValidator.fromMap(Map<String, dynamic> map) {
    return CustomModelValidationDataConfigValidator(
      s3Uri: map['s3Uri'] as String,
    );
  }
}

