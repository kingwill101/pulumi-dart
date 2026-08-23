// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationJobEvaluationConfigHumanDatasetMetricConfigDatasetDatasetLocation {
  /// S3 URI of the custom prompt dataset.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [EvaluationJobEvaluationConfigHumanDatasetMetricConfigDatasetDatasetLocation].
  /// [s3Uri] S3 URI of the custom prompt dataset.
  const EvaluationJobEvaluationConfigHumanDatasetMetricConfigDatasetDatasetLocation({
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Uri': s3Uri,
    };
  }

  factory EvaluationJobEvaluationConfigHumanDatasetMetricConfigDatasetDatasetLocation.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfigHumanDatasetMetricConfigDatasetDatasetLocation(
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
