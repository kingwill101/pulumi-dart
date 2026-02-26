// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_issue_model_input_data_config_medium.dart';

/// Configs for the input data used to create the issue model.
class GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig {
  /// A filter to reduce the conversations used for training the model to a specific subset.
  final String? filter;

  /// Medium of conversations used in training data. This field is being deprecated. To specify the medium to be used in training a new issue model, set the `medium` field on `filter`.
  final GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigMedium?
      medium;

  GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig({
    this.filter,
    this.medium,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final mediumValue = medium;
    if (mediumValue != null) {
      map['medium'] = mediumValue.value;
    }
    return map;
  }

  factory GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig(
      filter: map['filter'] == null ? null : map['filter'] as String,
      medium: map['medium'] == null
          ? null
          : GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigMedium
              .fromValue(map['medium'] as String),
    );
  }
}
