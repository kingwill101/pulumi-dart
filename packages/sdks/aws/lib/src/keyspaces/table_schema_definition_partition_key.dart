// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableSchemaDefinitionPartitionKey {
  /// The name of the partition key column.
  final pulumi.Input<String> name;

  /// Creates a new [TableSchemaDefinitionPartitionKey].
  /// [name] The name of the partition key column.
  const TableSchemaDefinitionPartitionKey({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory TableSchemaDefinitionPartitionKey.fromMap(Map<String, dynamic> map) {
    return TableSchemaDefinitionPartitionKey(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

