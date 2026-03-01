// ignore_for_file: unused_element, unnecessary_cast

import 'table_schema_composite_partition_key.dart';

class TableSchema {
  /// A non-empty list of partition keys defining the attributes used to partition the table data. The order of the list determines the partition hierarchy. The name and type of each partition key as well as the partition key order cannot be changed after the table is created. However, the enforcement level of each partition key can be changed. See Composite Partition Key below for more details.
  final TableSchemaCompositePartitionKey? compositePartitionKey;

  /// Creates a new [TableSchema].
  /// [compositePartitionKey] A non-empty list of partition keys defining the attributes used to partition the table data. The order of the list determines the partition hierarchy. The name and type of each partition key as well as the partition key order cannot be changed after the table is created. However, the enforcement level of each partition key can be changed. See Composite Partition Key below for more details.
  TableSchema({this.compositePartitionKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compositePartitionKey': ?compositePartitionKey == null
          ? null
          : compositePartitionKey!.toMap(),
    };
  }

  factory TableSchema.fromMap(Map<String, dynamic> map) {
    return TableSchema(
      compositePartitionKey: map['compositePartitionKey'] == null
          ? null
          : TableSchemaCompositePartitionKey.fromMap(
              (map['compositePartitionKey'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
