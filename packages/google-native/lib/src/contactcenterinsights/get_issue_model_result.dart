// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_issue_model_input_data_config_response.dart';
import 'google_cloud_contactcenterinsights_v1_issue_model_label_stats_response.dart';

/// Result data returned by getIssueModel.
class GetIssueModelResult {
  /// The time at which this issue model was created.
  final String createTime;

  /// The representative name for the issue model.
  final String displayName;

  /// Configs for the input data that used to create the issue model.
  final GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse
  inputDataConfig;

  /// Number of issues in this issue model.
  final String issueCount;

  /// Language of the model.
  final String languageCode;

  /// Type of the model.
  final String modelType;

  /// Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/issueModels/{issue_model}
  final String name;

  /// State of the model.
  final String state;

  /// Immutable. The issue model's label statistics on its training data.
  final GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse
  trainingStats;

  /// The most recent time at which the issue model was updated.
  final String updateTime;

  /// Creates a new [GetIssueModelResult].
  /// [createTime] The time at which this issue model was created.
  /// [displayName] The representative name for the issue model.
  /// [inputDataConfig] Configs for the input data that used to create the issue model.
  /// [issueCount] Number of issues in this issue model.
  /// [languageCode] Language of the model.
  /// [modelType] Type of the model.
  /// [name] Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/issueModels/{issue_model}
  /// [state] State of the model.
  /// [trainingStats] Immutable. The issue model's label statistics on its training data.
  /// [updateTime] The most recent time at which the issue model was updated.
  GetIssueModelResult({
    required this.createTime,
    required this.displayName,
    required this.inputDataConfig,
    required this.issueCount,
    required this.languageCode,
    required this.modelType,
    required this.name,
    required this.state,
    required this.trainingStats,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'displayName': displayName,
      'inputDataConfig': inputDataConfig.toMap(),
      'issueCount': issueCount,
      'languageCode': languageCode,
      'modelType': modelType,
      'name': name,
      'state': state,
      'trainingStats': trainingStats.toMap(),
      'updateTime': updateTime,
    };
  }

  factory GetIssueModelResult.fromMap(Map<String, dynamic> map) {
    return GetIssueModelResult(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      inputDataConfig:
          GoogleCloudContactcenterinsightsV1IssueModelInputDataConfigResponse.fromMap(
            (map['inputDataConfig'] as Map).cast<String, dynamic>(),
          ),
      issueCount: map['issueCount'] as String,
      languageCode: map['languageCode'] as String,
      modelType: map['modelType'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      trainingStats:
          GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse.fromMap(
            (map['trainingStats'] as Map).cast<String, dynamic>(),
          ),
      updateTime: map['updateTime'] as String,
    );
  }
}
