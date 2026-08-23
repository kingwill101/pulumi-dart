// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomModelTrainingDataConfig {
  /// The S3 URI where the training data is stored.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [CustomModelTrainingDataConfig].
  /// [s3Uri] The S3 URI where the training data is stored.
  const CustomModelTrainingDataConfig({
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Uri': s3Uri,
    };
  }

  factory CustomModelTrainingDataConfig.fromMap(Map<String, dynamic> map) {
    return CustomModelTrainingDataConfig(
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
