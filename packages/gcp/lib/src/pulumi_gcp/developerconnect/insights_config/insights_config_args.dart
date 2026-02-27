// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../insights_config_artifact_config/insights_config_artifact_config.dart';

/// The set of arguments for InsightsConfig.
class InsightsConfigArgs {
  /// User specified annotations. See https://google.aip.dev/148#annotations
  /// for more details such as format and size limitations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// The name of the App Hub Application.
  /// Format:
  /// projects/{project}/locations/{location}/applications/{application}
  final Input<String> appHubApplication;

  /// The artifact configurations of the artifacts that are deployed.
  /// Structure is documented below.
  final Input<List<InsightsConfigArtifactConfig>>? artifactConfigs;

  /// ID of the requesting InsightsConfig.
  final Input<String> insightsConfigId;

  /// Set of labels associated with an InsightsConfig.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  InsightsConfigArgs({
    this.annotations,
    required this.appHubApplication,
    this.artifactConfigs,
    required this.insightsConfigId,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['appHubApplication'] = appHubApplication;
    final artifactConfigsValue = artifactConfigs;
    if (artifactConfigsValue != null) {
      map['artifactConfigs'] = Input.mapOptionalInputValue<
              List<InsightsConfigArtifactConfig>, List<Map<String, dynamic>>>(
          artifactConfigsValue,
          (value) => Input.encodeList<InsightsConfigArtifactConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['insightsConfigId'] = insightsConfigId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InsightsConfigArgs.fromMap(Map<String, dynamic> map) {
    return InsightsConfigArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      appHubApplication: Input.asInput<String>(map['appHubApplication']),
      artifactConfigs:
          Input.asOptionalInput<List<InsightsConfigArtifactConfig>>(
              map['artifactConfigs']),
      insightsConfigId: Input.asInput<String>(map['insightsConfigId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
