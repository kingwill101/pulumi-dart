// ignore_for_file: unused_element, unnecessary_cast

class CxToolVersionToolConnectorSpecActionEntityOperation {
  /// ID of the entity.
  final String entityId;

  /// The operation to perform on the entity.
  /// Possible values are: `LIST`, `CREATE`, `UPDATE`, `DELETE`, `GET`.
  final String operation;

  /// Creates a new [CxToolVersionToolConnectorSpecActionEntityOperation].
  /// [entityId] ID of the entity.
  /// [operation] The operation to perform on the entity.
  CxToolVersionToolConnectorSpecActionEntityOperation({
    required this.entityId,
    required this.operation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'entityId': entityId, 'operation': operation};
  }

  factory CxToolVersionToolConnectorSpecActionEntityOperation.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxToolVersionToolConnectorSpecActionEntityOperation(
      entityId: map['entityId'] as String,
      operation: map['operation'] as String,
    );
  }
}
