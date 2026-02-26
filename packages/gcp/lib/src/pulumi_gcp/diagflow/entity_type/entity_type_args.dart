// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../entity_type_entity/entity_type_entity.dart';

/// The set of arguments for EntityType.
class EntityTypeArgs {
  /// The name of this entity type to be displayed on the console.
  final Input<String> displayName;

  /// Enables fuzzy entity extraction during classification.
  final Input<bool>? enableFuzzyExtraction;

  /// The collection of entity entries associated with the entity type.
  /// Structure is documented below.
  final Input<List<EntityTypeEntity>>? entities;

  /// Indicates the kind of entity type.
  /// * KIND_MAP: Map entity types allow mapping of a group of synonyms to a reference value.
  /// * KIND_LIST: List entity types contain a set of entries that do not map to reference values. However, list entity
  /// types can contain references to other entity types (with or without aliases).
  /// * KIND_REGEXP: Regexp entity types allow to specify regular expressions in entries values.
  /// Possible values are: `KIND_MAP`, `KIND_LIST`, `KIND_REGEXP`.
  final Input<String> kind;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  EntityTypeArgs({
    required this.displayName,
    this.enableFuzzyExtraction,
    this.entities,
    required this.kind,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final enableFuzzyExtractionValue = enableFuzzyExtraction;
    if (enableFuzzyExtractionValue != null) {
      map['enableFuzzyExtraction'] = enableFuzzyExtractionValue;
    }
    final entitiesValue = entities;
    if (entitiesValue != null) {
      map['entities'] = Input.mapOptionalInputValue<List<EntityTypeEntity>,
              List<Map<String, dynamic>>>(
          entitiesValue,
          (value) => Input.encodeList<EntityTypeEntity, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    map['kind'] = kind;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory EntityTypeArgs.fromMap(Map<String, dynamic> map) {
    return EntityTypeArgs(
      displayName: Input.asInput<String>(map['displayName']),
      enableFuzzyExtraction:
          Input.asOptionalInput<bool>(map['enableFuzzyExtraction']),
      entities: Input.asOptionalInput<List<EntityTypeEntity>>(map['entities']),
      kind: Input.asInput<String>(map['kind']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
