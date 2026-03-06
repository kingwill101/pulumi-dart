// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'featureset_specification_response.dart';
import 'materialization_settings_response.dart';

/// DTO object representing feature set version
class FeaturesetVersionResponse {
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Specifies list of entities
  final pulumi.Input<List<String>>? entities;
  /// If the name version are system generated (anonymous registration).
  final pulumi.Input<bool>? isAnonymous;
  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;
  /// Specifies the materialization settings
  final pulumi.Input<MaterializationSettingsResponse>? materializationSettings;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Provisioning state for the featureset version container.
  final pulumi.Input<String> provisioningState;
  /// Specifies the feature spec details
  final pulumi.Input<FeaturesetSpecificationResponse>? specification;
  /// Specifies the asset stage
  final pulumi.Input<String>? stage;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

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
  const FeaturesetVersionResponse({
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
      'materializationSettings': ?pulumi.Input.mapOptionalInputValue<MaterializationSettingsResponse, Map<String, dynamic>>(materializationSettings, (value) => value.toMap()),
      'properties': ?properties,
      'provisioningState': provisioningState,
      'specification': ?pulumi.Input.mapOptionalInputValue<FeaturesetSpecificationResponse, Map<String, dynamic>>(specification, (value) => value.toMap()),
      'stage': ?stage,
      'tags': ?tags,
    };
  }

  factory FeaturesetVersionResponse.fromMap(Map<String, dynamic> map) {
    return FeaturesetVersionResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entities: (() { final guardedValue = map['entities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isAnonymous: (() { final guardedValue = map['isAnonymous']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isArchived: (() { final guardedValue = map['isArchived']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      materializationSettings: (() { final guardedValue = map['materializationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaterializationSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesetSpecificationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stage: (() { final guardedValue = map['stage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

