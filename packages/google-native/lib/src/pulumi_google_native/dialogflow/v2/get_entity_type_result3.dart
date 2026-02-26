// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2_entity_type_entity_response.dart';

/// Result data returned by getEntityType.
class GetEntityTypeResult3 {
  /// Optional. Indicates whether the entity type can be automatically expanded.
  final String autoExpansionMode;

  /// The name of the entity type.
  final String displayName;

  /// Optional. Enables fuzzy entity extraction during classification.
  final bool enableFuzzyExtraction;

  /// Optional. The collection of entity entries associated with the entity type.
  final List<GoogleCloudDialogflowV2EntityTypeEntityResponse> entities;

  /// Indicates the kind of entity type.
  final String kind;

  /// The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Format: `projects//agent/entityTypes/`.
  final String name;

  GetEntityTypeResult3({
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
    map['entities'] = Input.encodeList<
        GoogleCloudDialogflowV2EntityTypeEntityResponse,
        Map<String, dynamic>>(entities, (value) => value.toMap());
    map['kind'] = kind;
    map['name'] = name;
    return map;
  }

  factory GetEntityTypeResult3.fromMap(Map<String, dynamic> map) {
    return GetEntityTypeResult3(
      autoExpansionMode: map['autoExpansionMode'] as String,
      displayName: map['displayName'] as String,
      enableFuzzyExtraction: map['enableFuzzyExtraction'] as bool,
      entities:
          Input.decodeList<GoogleCloudDialogflowV2EntityTypeEntityResponse>(
              map['entities'],
              (value) =>
                  GoogleCloudDialogflowV2EntityTypeEntityResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      name: map['name'] as String,
    );
  }
}
