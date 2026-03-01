// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flavor_data.dart';

/// Model asset version details.
class ModelVersion {
  /// The asset description text.
  final String? description;
  /// Mapping of model flavors to their properties.
  final Map<String, FlavorData>? flavors;
  /// If the name version are system generated (anonymous registration).
  final bool? isAnonymous;
  /// Is the asset archived?
  final bool? isArchived;
  /// Name of the training job which produced this model
  final String? jobName;
  /// The storage format for this entity. Used for NCD.
  final String? modelType;
  /// The URI path to the model contents.
  final String? modelUri;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Stage in the model lifecycle assigned to this model
  final String? stage;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [ModelVersion].
  /// [description] The asset description text.
  /// [flavors] Mapping of model flavors to their properties.
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [isArchived] Is the asset archived?
  /// [jobName] Name of the training job which produced this model
  /// [modelType] The storage format for this entity. Used for NCD.
  /// [modelUri] The URI path to the model contents.
  /// [properties] The asset property dictionary.
  /// [stage] Stage in the model lifecycle assigned to this model
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  ModelVersion({
    this.description,
    this.flavors,
    this.isAnonymous,
    this.isArchived,
    this.jobName,
    this.modelType,
    this.modelUri,
    this.properties,
    this.stage,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'flavors': ?flavors == null ? null : pulumi.Input.encodeMapValues<FlavorData, Map<String, dynamic>>(flavors!, (value) => value.toMap()),
      'isAnonymous': ?isAnonymous,
      'isArchived': ?isArchived,
      'jobName': ?jobName,
      'modelType': ?modelType,
      'modelUri': ?modelUri,
      'properties': ?properties,
      'stage': ?stage,
      'tags': ?tags,
    };
  }

  factory ModelVersion.fromMap(Map<String, dynamic> map) {
    return ModelVersion(
      description: map['description'] == null ? null : map['description'] as String,
      flavors: map['flavors'] == null ? null : pulumi.Input.decodeMapValues<FlavorData>(map['flavors'], (value) => FlavorData.fromMap((value as Map).cast<String, dynamic>())),
      isAnonymous: map['isAnonymous'] == null ? null : map['isAnonymous'] as bool,
      isArchived: map['isArchived'] == null ? null : map['isArchived'] as bool,
      jobName: map['jobName'] == null ? null : map['jobName'] as String,
      modelType: map['modelType'] == null ? null : map['modelType'] as String,
      modelUri: map['modelUri'] == null ? null : map['modelUri'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      stage: map['stage'] == null ? null : map['stage'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

