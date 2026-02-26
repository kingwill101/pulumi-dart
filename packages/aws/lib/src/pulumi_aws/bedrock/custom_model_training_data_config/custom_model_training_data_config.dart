// ignore_for_file: unused_element, unnecessary_cast

class CustomModelTrainingDataConfig {
  /// The S3 URI where the training data is stored.
  final String s3Uri;

  CustomModelTrainingDataConfig({
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3Uri'] = s3Uri;
    return map;
  }

  factory CustomModelTrainingDataConfig.fromMap(Map<String, dynamic> map) {
    return CustomModelTrainingDataConfig(
      s3Uri: map['s3Uri'] as String,
    );
  }
}
