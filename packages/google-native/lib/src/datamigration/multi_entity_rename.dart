// ignore_for_file: unused_element, unnecessary_cast

import 'multi_entity_rename_source_name_transformation.dart';

/// Options to configure rule type MultiEntityRename. The rule is used to rename multiple entities. The rule filter field can refer to one or more entities. The rule scope can be one of: Database, Schema, Table, Column, Constraint, Index, View, Function, Stored Procedure, Materialized View, Sequence, UDT
class MultiEntityRename {
  /// Optional. The pattern used to generate the new entity's name. This pattern must include the characters '{name}', which will be replaced with the name of the original entity. For example, the pattern 't_{name}' for an entity name jobs would be converted to 't_jobs'. If unspecified, the default value for this field is '{name}'
  final String? newNamePattern;

  /// Optional. Additional transformation that can be done on the source entity name before it is being used by the new_name_pattern, for example lower case. If no transformation is desired, use NO_TRANSFORMATION
  final MultiEntityRenameSourceNameTransformation? sourceNameTransformation;

  /// Creates a new [MultiEntityRename].
  /// [newNamePattern] Optional. The pattern used to generate the new entity's name. This pattern must include the characters '{name}', which will be replaced with the name of the original entity. For example, the pattern 't_{name}' for an entity name jobs would be converted to 't_jobs'. If unspecified, the default value for this field is '{name}'
  /// [sourceNameTransformation] Optional. Additional transformation that can be done on the source entity name before it is being used by the new_name_pattern, for example lower case. If no transformation is desired, use NO_TRANSFORMATION
  MultiEntityRename({this.newNamePattern, this.sourceNameTransformation});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newNamePattern': ?newNamePattern,
      'sourceNameTransformation': ?sourceNameTransformation == null
          ? null
          : sourceNameTransformation!.value,
    };
  }

  factory MultiEntityRename.fromMap(Map<String, dynamic> map) {
    return MultiEntityRename(
      newNamePattern: map['newNamePattern'] == null
          ? null
          : map['newNamePattern'] as String,
      sourceNameTransformation: map['sourceNameTransformation'] == null
          ? null
          : MultiEntityRenameSourceNameTransformation.fromValue(
              map['sourceNameTransformation'] as String,
            ),
    );
  }
}
