// ignore_for_file: unused_element, unnecessary_cast

class GetCustomModelValidationDataConfigValidator {
  /// The S3 URI where the validation data is stored..
  final String s3Uri;

  GetCustomModelValidationDataConfigValidator({
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3Uri'] = s3Uri;
    return map;
  }

  factory GetCustomModelValidationDataConfigValidator.fromMap(
      Map<String, dynamic> map) {
    return GetCustomModelValidationDataConfigValidator(
      s3Uri: map['s3Uri'] as String,
    );
  }
}
