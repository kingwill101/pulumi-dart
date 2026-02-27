// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AiFeatureGroupFeature.
class AiFeatureGroupFeatureArgs {
  /// The description of the FeatureGroup.
  final pulumi.Input<String>? description;

  /// The name of the Feature Group.
  final pulumi.Input<String> featureGroup;

  /// The labels with user-defined metadata to organize your FeatureGroup.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The resource name of the Feature Group Feature.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region for the resource. It should be the same as the feature group's region.
  final pulumi.Input<String> region;

  /// The name of the BigQuery Table/View column hosting data for this version. If no value is provided, will use featureId.
  final pulumi.Input<String>? versionColumnName;

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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      featureGroup: pulumi.Input.asInput<String>(map['featureGroup']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      versionColumnName:
          pulumi.Input.asOptionalInput<String>(map['versionColumnName']),
    );
  }
}
