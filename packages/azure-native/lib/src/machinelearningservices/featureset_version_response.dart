// ignore_for_file: unused_element, unnecessary_cast

import 'featureset_specification_response.dart';
import 'materialization_settings_response.dart';

/// DTO object representing feature set version
class FeaturesetVersionResponse {
  /// The asset description text.
  final String? description;
  /// Specifies list of entities
  final List<String>? entities;
  /// If the name version are system generated (anonymous registration).
  final bool? isAnonymous;
  /// Is the asset archived?
  final bool? isArchived;
  /// Specifies the materialization settings
  final MaterializationSettingsResponse? materializationSettings;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Provisioning state for the featureset version container.
  final String provisioningState;
  /// Specifies the feature spec details
  final FeaturesetSpecificationResponse? specification;
  /// Specifies the asset stage
  final String? stage;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [FeaturesetVersionResponse].
  /// [description] The asset description text.
  /// [entities] Specifies list of entities
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [isArchived] Is the asset archived?
  /// [materializationSettings] Specifies the materialization settings
  /// [properties] The asset property dictionary.
  /// [provisioningState] Provisioning state for the featureset version container.
  /// [specification] Specifies the feature spec details
  /// [stage] Specifies the asset stage
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  FeaturesetVersionResponse({
    this.description,
    this.entities,
    this.isAnonymous,
    this.isArchived,
    this.materializationSettings,
    this.properties,
    required this.provisioningState,
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
      'provisioningState': provisioningState,
      'specification': ?specification == null ? null : specification!.toMap(),
      'stage': ?stage,
      'tags': ?tags,
    };
  }

  factory FeaturesetVersionResponse.fromMap(Map<String, dynamic> map) {
    return FeaturesetVersionResponse(
      description: map['description'] == null ? null : map['description'] as String,
      entities: map['entities'] == null ? null : (map['entities'] as List).cast<String>(),
      isAnonymous: map['isAnonymous'] == null ? null : map['isAnonymous'] as bool,
      isArchived: map['isArchived'] == null ? null : map['isArchived'] as bool,
      materializationSettings: map['materializationSettings'] == null ? null : MaterializationSettingsResponse.fromMap((map['materializationSettings'] as Map).cast<String, dynamic>()),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      provisioningState: map['provisioningState'] as String,
      specification: map['specification'] == null ? null : FeaturesetSpecificationResponse.fromMap((map['specification'] as Map).cast<String, dynamic>()),
      stage: map['stage'] == null ? null : map['stage'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

