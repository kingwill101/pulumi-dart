// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_entity_type_entity_response.dart';

/// Result data returned by getEntityType.
class GetEntityTypeDialogflowV2beta1Result {
  /// Optional. Indicates whether the entity type can be automatically expanded.
  final String autoExpansionMode;

  /// The name of the entity type.
  final String displayName;

  /// Optional. Enables fuzzy entity extraction during classification.
  final bool enableFuzzyExtraction;

  /// Optional. The collection of entity entries associated with the entity type.
  final List<GoogleCloudDialogflowV2beta1EntityTypeEntityResponse> entities;

  /// Indicates the kind of entity type.
  final String kind;

  /// The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Supported formats: - `projects//agent/entityTypes/` - `projects//locations//agent/entityTypes/`
  final String name;

  GetEntityTypeDialogflowV2beta1Result({
    required this.autoExpansionMode,
    required this.displayName,
    required this.enableFuzzyExtraction,
    required this.entities,
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoExpansionMode'] = autoExpansionMode;
    map['displayName'] = displayName;
    map['enableFuzzyExtraction'] = enableFuzzyExtraction;
    map['entities'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2beta1EntityTypeEntityResponse,
        Map<String, dynamic>>(entities, (value) => value.toMap());
    map['kind'] = kind;
    map['name'] = name;
    return map;
  }

  factory GetEntityTypeDialogflowV2beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetEntityTypeDialogflowV2beta1Result(
      autoExpansionMode: map['autoExpansionMode'] as String,
      displayName: map['displayName'] as String,
      enableFuzzyExtraction: map['enableFuzzyExtraction'] as bool,
      entities: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2beta1EntityTypeEntityResponse>(
          map['entities'],
          (value) =>
              GoogleCloudDialogflowV2beta1EntityTypeEntityResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      name: map['name'] as String,
    );
  }
}
