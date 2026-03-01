// ignore_for_file: unused_element, unnecessary_cast

class GetCustomModelTrainingDataConfig {
  /// The S3 URI where the validation data is stored..
  final String s3Uri;

  /// Creates a new [GetCustomModelTrainingDataConfig].
  /// [s3Uri] The S3 URI where the validation data is stored..
  GetCustomModelTrainingDataConfig({required this.s3Uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'s3Uri': s3Uri};
  }

  factory GetCustomModelTrainingDataConfig.fromMap(Map<String, dynamic> map) {
    return GetCustomModelTrainingDataConfig(s3Uri: map['s3Uri'] as String);
  }
}
