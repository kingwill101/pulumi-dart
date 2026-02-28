// ignore_for_file: unused_element, unnecessary_cast


/// Options to configure rule type EntityMove. The rule is used to move an entity to a new schema. The rule filter field can refer to one or more entities. The rule scope can be one of: Table, Column, Constraint, Index, View, Function, Stored Procedure, Materialized View, Sequence, UDT
class EntityMoveResponse {
  /// The new schema
  final String newSchema;

  /// Creates a new [EntityMoveResponse].
  /// [newSchema] The new schema
  EntityMoveResponse({
    required this.newSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newSchema': newSchema,
    };
  }

  factory EntityMoveResponse.fromMap(Map<String, dynamic> map) {
    return EntityMoveResponse(
      newSchema: map['newSchema'] as String,
    );
  }
}

