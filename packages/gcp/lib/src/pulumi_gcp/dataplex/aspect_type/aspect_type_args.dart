// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AspectType.
class AspectTypeArgs {
  /// The aspect type id of the aspect type.
  final Input<String>? aspectTypeId;

  /// Classifies the data stored by the aspect.
  /// `DATA_CLASSIFICATION_UNSPECIFIED` denotes that the aspect contains only metadata
  /// while `METADATA_AND_DATA` indicates data derived content.
  /// <br><br>
  /// Possible values are: `DATA_CLASSIFICATION_UNSPECIFIED`, `METADATA_AND_DATA`.
  final Input<String>? dataClassification;

  /// Description of the AspectType.
  final Input<String>? description;

  /// User friendly display name.
  final Input<String>? displayName;

  /// User-defined labels for the AspectType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location where aspect type will be created in.
  final Input<String>? location;

  /// MetadataTemplate of the Aspect.
  final Input<String>? metadataTemplate;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

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
      aspectTypeId: Input.asOptionalInput<String>(map['aspectTypeId']),
      dataClassification:
          Input.asOptionalInput<String>(map['dataClassification']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      metadataTemplate: Input.asOptionalInput<String>(map['metadataTemplate']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
