// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_version_variants.dart';

/// Definition of the experiment.
class GoogleCloudDialogflowCxV3ExperimentDefinition {
  /// The condition defines which subset of sessions are selected for this experiment. If not specified, all sessions are eligible. E.g. "query_input.language_code=en" See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  final String? condition;

  /// The flow versions as the variants of this experiment.
  final GoogleCloudDialogflowCxV3VersionVariants? versionVariants;

  GoogleCloudDialogflowCxV3ExperimentDefinition({
    this.condition,
    this.versionVariants,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue;
    }
    final versionVariantsValue = versionVariants;
    if (versionVariantsValue != null) {
      map['versionVariants'] = versionVariantsValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3ExperimentDefinition.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ExperimentDefinition(
      condition: map['condition'] == null ? null : map['condition'] as String,
      versionVariants: map['versionVariants'] == null
          ? null
          : GoogleCloudDialogflowCxV3VersionVariants.fromMap(
              (map['versionVariants'] as Map).cast<String, dynamic>()),
    );
  }
}
