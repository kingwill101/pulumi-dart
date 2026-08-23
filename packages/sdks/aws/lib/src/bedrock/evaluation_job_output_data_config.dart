// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationJobOutputDataConfig {
  /// S3 URI where the results of the evaluation job are stored.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [EvaluationJobOutputDataConfig].
  /// [s3Uri] S3 URI where the results of the evaluation job are stored.
  const EvaluationJobOutputDataConfig({
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Uri': s3Uri,
    };
  }

  factory EvaluationJobOutputDataConfig.fromMap(Map<String, dynamic> map) {
    return EvaluationJobOutputDataConfig(
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
