// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableSchemaDefinitionClusteringKey {
  /// The name of the clustering key column.
  final pulumi.Input<String> name;
  /// The order modifier. Valid values: `ASC`, `DESC`.
  final pulumi.Input<String> orderBy;

  /// Creates a new [TableSchemaDefinitionClusteringKey].
  /// [name] The name of the clustering key column.
  /// [orderBy] The order modifier. Valid values: `ASC`, `DESC`.
  const TableSchemaDefinitionClusteringKey({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      orderBy: pulumi.Input.fromValue(map['orderBy'] as String),
    );
  }
}

