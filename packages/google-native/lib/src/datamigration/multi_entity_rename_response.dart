// ignore_for_file: unused_element, unnecessary_cast

/// Options to configure rule type MultiEntityRename. The rule is used to rename multiple entities. The rule filter field can refer to one or more entities. The rule scope can be one of: Database, Schema, Table, Column, Constraint, Index, View, Function, Stored Procedure, Materialized View, Sequence, UDT
class MultiEntityRenameResponse {
  /// Optional. The pattern used to generate the new entity's name. This pattern must include the characters '{name}', which will be replaced with the name of the original entity. For example, the pattern 't_{name}' for an entity name jobs would be converted to 't_jobs'. If unspecified, the default value for this field is '{name}'
  final String newNamePattern;

  /// Optional. Additional transformation that can be done on the source entity name before it is being used by the new_name_pattern, for example lower case. If no transformation is desired, use NO_TRANSFORMATION
  final String sourceNameTransformation;

  /// Creates a new [MultiEntityRenameResponse].
  /// [newNamePattern] Optional. The pattern used to generate the new entity's name. This pattern must include the characters '{name}', which will be replaced with the name of the original entity. For example, the pattern 't_{name}' for an entity name jobs would be converted to 't_jobs'. If unspecified, the default value for this field is '{name}'
  /// [sourceNameTransformation] Optional. Additional transformation that can be done on the source entity name before it is being used by the new_name_pattern, for example lower case. If no transformation is desired, use NO_TRANSFORMATION
  MultiEntityRenameResponse({
    required this.newNamePattern,
    required this.sourceNameTransformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['newNamePattern'] = newNamePattern;
    map['sourceNameTransformation'] = sourceNameTransformation;
    return map;
  }

  factory MultiEntityRenameResponse.fromMap(Map<String, dynamic> map) {
    return MultiEntityRenameResponse(
      newNamePattern: map['newNamePattern'] as String,
      sourceNameTransformation: map['sourceNameTransformation'] as String,
    );
  }
}
