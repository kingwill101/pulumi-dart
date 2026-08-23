// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDatasetDatasetLocation {
  /// S3 URI of the custom prompt dataset.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDatasetDatasetLocation].
  /// [s3Uri] S3 URI of the custom prompt dataset.
  const EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDatasetDatasetLocation({
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Uri': s3Uri,
    };
  }

  factory EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDatasetDatasetLocation.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDatasetDatasetLocation(
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
