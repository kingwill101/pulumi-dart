// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomModelValidationDataConfigValidator {
  /// The S3 URI where the validation data is stored..
  final pulumi.Input<String> s3Uri;

  /// Creates a new [GetCustomModelValidationDataConfigValidator].
  /// [s3Uri] The S3 URI where the validation data is stored..
  GetCustomModelValidationDataConfigValidator({
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Uri': s3Uri,
    };
  }

  factory GetCustomModelValidationDataConfigValidator.fromMap(Map<String, dynamic> map) {
    return GetCustomModelValidationDataConfigValidator(
      s3Uri: (map['s3Uri'] as String).input(),
    );
  }
}

