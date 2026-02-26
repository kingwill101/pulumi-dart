// ignore_for_file: unused_element, unnecessary_cast

class TableSchemaDefinitionClusteringKey {
  /// The name of the clustering key column.
  final String name;

  /// The order modifier. Valid values: `ASC`, `DESC`.
  final String orderBy;

  TableSchemaDefinitionClusteringKey({
    required this.name,
    required this.orderBy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['orderBy'] = orderBy;
    return map;
  }

  factory TableSchemaDefinitionClusteringKey.fromMap(Map<String, dynamic> map) {
    return TableSchemaDefinitionClusteringKey(
      name: map['name'] as String,
      orderBy: map['orderBy'] as String,
    );
  }
}
