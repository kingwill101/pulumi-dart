// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AspectType.
class AspectTypeArgs {
  /// The aspect type id of the aspect type.
  final pulumi.Input<String>? aspectTypeId;

  /// Classifies the data stored by the aspect.
  /// `DATA_CLASSIFICATION_UNSPECIFIED` denotes that the aspect contains only metadata
  /// while `METADATA_AND_DATA` indicates data derived content.
  /// <br><br>
  /// Possible values are: `DATA_CLASSIFICATION_UNSPECIFIED`, `METADATA_AND_DATA`.
  final pulumi.Input<String>? dataClassification;

  /// Description of the AspectType.
  final pulumi.Input<String>? description;

  /// User friendly display name.
  final pulumi.Input<String>? displayName;

  /// User-defined labels for the AspectType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location where aspect type will be created in.
  final pulumi.Input<String>? location;

  /// MetadataTemplate of the Aspect.
  final pulumi.Input<String>? metadataTemplate;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  AspectTypeArgs({
    this.aspectTypeId,
    this.dataClassification,
    this.description,
    this.displayName,
    this.labels,
    this.location,
    this.metadataTemplate,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aspectTypeIdValue = aspectTypeId;
    if (aspectTypeIdValue != null) {
      map['aspectTypeId'] = aspectTypeIdValue;
    }
    final dataClassificationValue = dataClassification;
    if (dataClassificationValue != null) {
      map['dataClassification'] = dataClassificationValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final metadataTemplateValue = metadataTemplate;
    if (metadataTemplateValue != null) {
      map['metadataTemplate'] = metadataTemplateValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AspectTypeArgs.fromMap(Map<String, dynamic> map) {
    return AspectTypeArgs(
      aspectTypeId: pulumi.Input.asOptionalInput<String>(map['aspectTypeId']),
      dataClassification:
          pulumi.Input.asOptionalInput<String>(map['dataClassification']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      metadataTemplate:
          pulumi.Input.asOptionalInput<String>(map['metadataTemplate']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
