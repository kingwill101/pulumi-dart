// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_aspect_type_aspect_type_args_doc}
/// The set of arguments for AspectType.
/// {@endtemplate}
/// {@macro pulumi_dataplex_aspect_type_aspect_type_args_doc}
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

  /// Creates a new [AspectTypeArgs].
  /// [aspectTypeId] The aspect type id of the aspect type.
  /// [dataClassification] Classifies the data stored by the aspect.
  /// [description] Description of the AspectType.
  /// [displayName] User friendly display name.
  /// [labels] User-defined labels for the AspectType.
  /// [location] The location where aspect type will be created in.
  /// [metadataTemplate] MetadataTemplate of the Aspect.
  /// [project] The ID of the project in which the resource belongs.
  AspectTypeArgs({
    String? aspectTypeId,
    String? dataClassification,
    String? description,
    String? displayName,
    Map<String, String>? labels,
    String? location,
    String? metadataTemplate,
    String? project,
  }) : aspectTypeId = pulumi.Input.asOptionalInput<String>(aspectTypeId),
       dataClassification = pulumi.Input.asOptionalInput<String>(
         dataClassification,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       metadataTemplate = pulumi.Input.asOptionalInput<String>(
         metadataTemplate,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aspectTypeId': ?aspectTypeId,
      'dataClassification': ?dataClassification,
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': ?location,
      'metadataTemplate': ?metadataTemplate,
      'project': ?project,
    };
  }

  factory AspectTypeArgs.fromMap(Map<String, dynamic> map) {
    return AspectTypeArgs(
      aspectTypeId: map['aspectTypeId'] == null
          ? null
          : map['aspectTypeId'] as String,
      dataClassification: map['dataClassification'] == null
          ? null
          : map['dataClassification'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      metadataTemplate: map['metadataTemplate'] == null
          ? null
          : map['metadataTemplate'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
