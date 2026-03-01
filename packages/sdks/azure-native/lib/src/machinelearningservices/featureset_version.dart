// ignore_for_file: unused_element, unnecessary_cast

import 'featureset_specification.dart';
import 'materialization_settings.dart';

/// DTO object representing feature set version
class FeaturesetVersion {
  /// The asset description text.
  final String? description;
  /// Specifies list of entities
  final List<String>? entities;
  /// If the name version are system generated (anonymous registration).
  final bool? isAnonymous;
  /// Is the asset archived?
  final bool? isArchived;
  /// Specifies the materialization settings
  final MaterializationSettings? materializationSettings;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Specifies the feature spec details
  final FeaturesetSpecification? specification;
  /// Specifies the asset stage
  final String? stage;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [FeaturesetVersion].
  /// [description] The asset description text.
  /// [entities] Specifies list of entities
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [isArchived] Is the asset archived?
  /// [materializationSettings] Specifies the materialization settings
  /// [properties] The asset property dictionary.
  /// [specification] Specifies the feature spec details
  /// [stage] Specifies the asset stage
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  FeaturesetVersion({
    this.description,
    this.entities,
    this.isAnonymous,
    this.isArchived,
    this.materializationSettings,
    this.properties,
    this.specification,
    this.stage,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'entities': ?entities,
      'isAnonymous': ?isAnonymous,
      'isArchived': ?isArchived,
      'materializationSettings': ?materializationSettings == null ? null : materializationSettings!.toMap(),
      'properties': ?properties,
      'specification': ?specification == null ? null : specification!.toMap(),
      'stage': ?stage,
      'tags': ?tags,
    };
  }

  factory FeaturesetVersion.fromMap(Map<String, dynamic> map) {
    return FeaturesetVersion(
      description: map['description'] == null ? null : map['description'] as String,
      entities: map['entities'] == null ? null : (map['entities'] as List).cast<String>(),
      isAnonymous: map['isAnonymous'] == null ? null : map['isAnonymous'] as bool,
      isArchived: map['isArchived'] == null ? null : map['isArchived'] as bool,
      materializationSettings: map['materializationSettings'] == null ? null : MaterializationSettings.fromMap((map['materializationSettings'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      specification: map['specification'] == null ? null : FeaturesetSpecification.fromMap((map['specification'] as Map).cast<String, dynamic>()),
      stage: map['stage'] == null ? null : map['stage'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

