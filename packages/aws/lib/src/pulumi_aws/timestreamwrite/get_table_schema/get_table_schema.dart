// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_table_schema_composite_partition_key/get_table_schema_composite_partition_key.dart';

class GetTableSchema {
  final List<GetTableSchemaCompositePartitionKey> compositePartitionKeys;

  GetTableSchema({
    required this.compositePartitionKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['compositePartitionKeys'] = pulumi.Input.encodeList<
        GetTableSchemaCompositePartitionKey,
        Map<String, dynamic>>(compositePartitionKeys, (value) => value.toMap());
    return map;
  }

  factory GetTableSchema.fromMap(Map<String, dynamic> map) {
    return GetTableSchema(
      compositePartitionKeys:
          pulumi.Input.decodeList<GetTableSchemaCompositePartitionKey>(
              map['compositePartitionKeys'],
              (value) => GetTableSchemaCompositePartitionKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
