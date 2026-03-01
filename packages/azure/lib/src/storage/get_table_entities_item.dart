// ignore_for_file: unused_element, unnecessary_cast


class GetTableEntitiesItem {
  /// Partition Key of the Entity.
  final String partitionKey;
  /// A map of any additional properties in key-value format.
  final Map<String, String> properties;
  /// Row Key of the Entity.
  final String rowKey;

  /// Creates a new [GetTableEntitiesItem].
  /// [partitionKey] Partition Key of the Entity.
  /// [properties] A map of any additional properties in key-value format.
  /// [rowKey] Row Key of the Entity.
  GetTableEntitiesItem({
    required this.partitionKey,
    required this.properties,
    required this.rowKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionKey': partitionKey,
      'properties': properties,
      'rowKey': rowKey,
    };
  }

  factory GetTableEntitiesItem.fromMap(Map<String, dynamic> map) {
    return GetTableEntitiesItem(
      partitionKey: map['partitionKey'] as String,
      properties: (map['properties'] as Map).cast<String, String>(),
      rowKey: map['rowKey'] as String,
    );
  }
}

