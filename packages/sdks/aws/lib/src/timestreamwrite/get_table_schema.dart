// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_schema_composite_partition_key.dart';

class GetTableSchema {
  final pulumi.Input<List<GetTableSchemaCompositePartitionKey>> compositePartitionKeys;

  /// Creates a new [GetTableSchema].
  /// [compositePartitionKeys] Required.
  const GetTableSchema({
    required this.compositePartitionKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compositePartitionKeys': pulumi.Input.mapInputValue<List<GetTableSchemaCompositePartitionKey>, List<Map<String, dynamic>>>(compositePartitionKeys, (value) => pulumi.Input.encodeList<GetTableSchemaCompositePartitionKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTableSchema.fromMap(Map<String, dynamic> map) {
    return GetTableSchema(
      compositePartitionKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTableSchemaCompositePartitionKey>(map['compositePartitionKeys']!, (value) => GetTableSchemaCompositePartitionKey.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

