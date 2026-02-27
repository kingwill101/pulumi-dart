// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AiFeatureGroupFeature.
class AiFeatureGroupFeatureArgs {
  /// The description of the FeatureGroup.
  final Input<String>? description;

  /// The name of the Feature Group.
  final Input<String> featureGroup;

  /// The labels with user-defined metadata to organize your FeatureGroup.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The resource name of the Feature Group Feature.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region for the resource. It should be the same as the feature group's region.
  final Input<String> region;

  /// The name of the BigQuery Table/View column hosting data for this version. If no value is provided, will use featureId.
  final Input<String>? versionColumnName;

  AiFeatureGroupFeatureArgs({
    this.description,
    required this.featureGroup,
    this.labels,
    this.name,
    this.project,
    required this.region,
    this.versionColumnName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['featureGroup'] = featureGroup;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final versionColumnNameValue = versionColumnName;
    if (versionColumnNameValue != null) {
      map['versionColumnName'] = versionColumnNameValue;
    }
    return map;
  }

  factory AiFeatureGroupFeatureArgs.fromMap(Map<String, dynamic> map) {
    return AiFeatureGroupFeatureArgs(
      description: Input.asOptionalInput<String>(map['description']),
      featureGroup: Input.asInput<String>(map['featureGroup']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      versionColumnName:
          Input.asOptionalInput<String>(map['versionColumnName']),
    );
  }
}
