// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_issue_model_input_data_config.dart';
import 'issue_model_model_type.dart';

/// The set of arguments for IssueModel.
class IssueModelArgs {
  /// The representative name for the issue model.
  final pulumi.Input<String>? displayName;

  /// Configs for the input data that used to create the issue model.
  final pulumi
      .Input<GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig>?
      inputDataConfig;

  /// Language of the model.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;

  /// Type of the model.
  final pulumi.Input<IssueModelModelType>? modelType;

  /// Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/issueModels/{issue_model}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

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
      map['inputDataConfig'] = pulumi.Input.mapOptionalInputValue<
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
          pulumi.Input.mapOptionalInputValue<IssueModelModelType, String>(
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
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      inputDataConfig: pulumi.Input.asOptionalInput<
              GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig>(
          map['inputDataConfig']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      modelType:
          pulumi.Input.asOptionalInput<IssueModelModelType>(map['modelType']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
