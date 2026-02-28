// ignore_for_file: unused_element, unnecessary_cast

class TableSchemaDefinitionPartitionKey {
  /// The name of the partition key column.
  final String name;

  /// Creates a new [TableSchemaDefinitionPartitionKey].
  /// [name] The name of the partition key column.
  TableSchemaDefinitionPartitionKey({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory TableSchemaDefinitionPartitionKey.fromMap(Map<String, dynamic> map) {
    return TableSchemaDefinitionPartitionKey(
      name: map['name'] as String,
    );
  }
}
