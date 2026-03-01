// ignore_for_file: unused_element, unnecessary_cast


class TableSchemaDefinitionClusteringKey {
  /// The name of the clustering key column.
  final String name;
  /// The order modifier. Valid values: `ASC`, `DESC`.
  final String orderBy;

  /// Creates a new [TableSchemaDefinitionClusteringKey].
  /// [name] The name of the clustering key column.
  /// [orderBy] The order modifier. Valid values: `ASC`, `DESC`.
  TableSchemaDefinitionClusteringKey({
    required this.name,
    required this.orderBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'orderBy': orderBy,
    };
  }

  factory TableSchemaDefinitionClusteringKey.fromMap(Map<String, dynamic> map) {
    return TableSchemaDefinitionClusteringKey(
      name: map['name'] as String,
      orderBy: map['orderBy'] as String,
    );
  }
}

