// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_contactcenterinsights_v1_issue_model_input_data_config.dart';
import 'issue_model_model_type.dart';

/// The set of arguments for IssueModel.
class IssueModelArgs {
  /// The representative name for the issue model.
  final Input<String>? displayName;

  /// Configs for the input data that used to create the issue model.
  final Input<GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig>?
      inputDataConfig;

  /// Language of the model.
  final Input<String>? languageCode;
  final Input<String>? location;

  /// Type of the model.
  final Input<IssueModelModelType>? modelType;

  /// Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/issueModels/{issue_model}
  final Input<String>? name;
  final Input<String>? project;

  IssueModelArgs({
    this.displayName,
    this.inputDataConfig,
    this.languageCode,
    this.location,
    this.modelType,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final inputDataConfigValue = inputDataConfig;
    if (inputDataConfigValue != null) {
      map['inputDataConfig'] = Input.mapOptionalInputValue<
          GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig,
          Map<String, dynamic>>(inputDataConfigValue, (value) => value.toMap());
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final modelTypeValue = modelType;
    if (modelTypeValue != null) {
      map['modelType'] =
          Input.mapOptionalInputValue<IssueModelModelType, String>(
              modelTypeValue, (value) => value.value);
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory IssueModelArgs.fromMap(Map<String, dynamic> map) {
    return IssueModelArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      inputDataConfig: Input.asOptionalInput<
              GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig>(
          map['inputDataConfig']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      location: Input.asOptionalInput<String>(map['location']),
      modelType: Input.asOptionalInput<IssueModelModelType>(map['modelType']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
