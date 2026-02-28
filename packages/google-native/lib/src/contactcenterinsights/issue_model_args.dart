// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_issue_model_input_data_config.dart';
import 'issue_model_model_type.dart';

/// {@template pulumi_contactcenterinsights_v1_issue_model_args_doc}
/// The set of arguments for IssueModel.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_v1_issue_model_args_doc}
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

  /// Creates a new [IssueModelArgs].
  /// [displayName] The representative name for the issue model.
  /// [inputDataConfig] Configs for the input data that used to create the issue model.
  /// [languageCode] Language of the model.
  /// [location] Optional.
  /// [modelType] Type of the model.
  /// [name] Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/issueModels/{issue_model}
  /// [project] Optional.
  IssueModelArgs({
    String? displayName,
    GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig?
        inputDataConfig,
    String? languageCode,
    String? location,
    IssueModelModelType? modelType,
    String? name,
    String? project,
  })  : displayName = pulumi.Input.asOptionalInput<String>(displayName),
        inputDataConfig = pulumi.Input.asOptionalInput<
                GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig>(
            inputDataConfig),
        languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
        location = pulumi.Input.asOptionalInput<String>(location),
        modelType =
            pulumi.Input.asOptionalInput<IssueModelModelType>(modelType),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      inputDataConfig: map['inputDataConfig'] == null
          ? null
          : GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig.fromMap(
              (map['inputDataConfig'] as Map).cast<String, dynamic>()),
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      modelType: map['modelType'] == null
          ? null
          : IssueModelModelType.fromValue(map['modelType'] as String),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
