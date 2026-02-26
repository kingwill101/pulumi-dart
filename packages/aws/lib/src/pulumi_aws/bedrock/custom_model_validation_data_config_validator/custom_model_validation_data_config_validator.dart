// ignore_for_file: unused_element, unnecessary_cast

class CustomModelValidationDataConfigValidator {
  /// The S3 URI where the validation data is stored.
  final String s3Uri;

  CustomModelValidationDataConfigValidator({
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3Uri'] = s3Uri;
    return map;
  }

  factory CustomModelValidationDataConfigValidator.fromMap(
      Map<String, dynamic> map) {
    return CustomModelValidationDataConfigValidator(
      s3Uri: map['s3Uri'] as String,
    );
  }
}
