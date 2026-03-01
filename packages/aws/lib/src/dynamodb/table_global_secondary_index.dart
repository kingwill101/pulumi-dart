// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_global_secondary_index_key_schema.dart';
import 'table_global_secondary_index_on_demand_throughput.dart';
import 'table_global_secondary_index_warm_throughput.dart';

class TableGlobalSecondaryIndex {
  /// Name of the hash key in the index; must be defined as an attribute in the resource. Mutually exclusive with `key_schema`. Use `key_schema` instead.
  final String? hashKey;

  /// Configuration block(s) for the key schema. Mutually exclusive with `hash_key` and `range_key`. Required if `hash_key` is not specified. Supports multi-attribute keys for the [Multi-Attribute Keys design pattern](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.DesignPattern.MultiAttributeKeys.html). See below.
  final List<TableGlobalSecondaryIndexKeySchema>? keySchemas;

  /// Name of the index.
  final String name;

  /// Only required with `INCLUDE` as a projection type; a list of attributes to project into the index. These do not need to be defined as attributes on the table.
  final List<String>? nonKeyAttributes;

  /// Sets the maximum number of read and write units for the specified on-demand index. See below.
  final TableGlobalSecondaryIndexOnDemandThroughput? onDemandThroughput;

  /// One of `ALL`, `INCLUDE` or `KEYS_ONLY` where `ALL` projects every attribute into the index, `KEYS_ONLY` projects into the index only the table and index hash_key and sort_key attributes, `INCLUDE` projects into the index all of the attributes that are defined in `non_key_attributes` in addition to the attributes that `KEYS_ONLY` project.
  final String projectionType;

  /// Name of the range key; must be defined as an attribute in the resource. Mutually exclusive with `key_schema`. Use `key_schema` instead.
  final String? rangeKey;

  /// Number of read units for this index. Must be set if billing_mode is set to PROVISIONED.
  final int? readCapacity;

  /// Sets the number of warm read and write units for this index. See below.
  final TableGlobalSecondaryIndexWarmThroughput? warmThroughput;

  /// Number of write units for this index. Must be set if billing_mode is set to PROVISIONED.
  final int? writeCapacity;

  /// Creates a new [TableGlobalSecondaryIndex].
  /// [hashKey] Name of the hash key in the index; must be defined as an attribute in the resource. Mutually exclusive with `key_schema`. Use `key_schema` instead.
  /// [keySchemas] Configuration block(s) for the key schema. Mutually exclusive with `hash_key` and `range_key`. Required if `hash_key` is not specified. Supports multi-attribute keys for the [Multi-Attribute Keys design pattern](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.DesignPattern.MultiAttributeKeys.html). See below.
  /// [name] Name of the index.
  /// [nonKeyAttributes] Only required with `INCLUDE` as a projection type; a list of attributes to project into the index. These do not need to be defined as attributes on the table.
  /// [onDemandThroughput] Sets the maximum number of read and write units for the specified on-demand index. See below.
  /// [projectionType] One of `ALL`, `INCLUDE` or `KEYS_ONLY` where `ALL` projects every attribute into the index, `KEYS_ONLY` projects into the index only the table and index hash_key and sort_key attributes, `INCLUDE` projects into the index all of the attributes that are defined in `non_key_attributes` in addition to the attributes that `KEYS_ONLY` project.
  /// [rangeKey] Name of the range key; must be defined as an attribute in the resource. Mutually exclusive with `key_schema`. Use `key_schema` instead.
  /// [readCapacity] Number of read units for this index. Must be set if billing_mode is set to PROVISIONED.
  /// [warmThroughput] Sets the number of warm read and write units for this index. See below.
  /// [writeCapacity] Number of write units for this index. Must be set if billing_mode is set to PROVISIONED.
  TableGlobalSecondaryIndex({
    this.hashKey,
    this.keySchemas,
    required this.name,
    this.nonKeyAttributes,
    this.onDemandThroughput,
    required this.projectionType,
    this.rangeKey,
    this.readCapacity,
    this.warmThroughput,
    this.writeCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hashKey': ?hashKey,
      'keySchemas': ?keySchemas == null
          ? null
          : pulumi.Input.encodeList<
              TableGlobalSecondaryIndexKeySchema,
              Map<String, dynamic>
            >(keySchemas!, (value) => value.toMap()),
      'name': name,
      'nonKeyAttributes': ?nonKeyAttributes,
      'onDemandThroughput': ?onDemandThroughput == null
          ? null
          : onDemandThroughput!.toMap(),
      'projectionType': projectionType,
      'rangeKey': ?rangeKey,
      'readCapacity': ?readCapacity,
      'warmThroughput': ?warmThroughput == null
          ? null
          : warmThroughput!.toMap(),
      'writeCapacity': ?writeCapacity,
    };
  }

  factory TableGlobalSecondaryIndex.fromMap(Map<String, dynamic> map) {
    return TableGlobalSecondaryIndex(
      hashKey: map['hashKey'] == null ? null : map['hashKey'] as String,
      keySchemas: map['keySchemas'] == null
          ? null
          : pulumi.Input.decodeList<TableGlobalSecondaryIndexKeySchema>(
              map['keySchemas'],
              (value) => TableGlobalSecondaryIndexKeySchema.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      name: map['name'] as String,
      nonKeyAttributes: map['nonKeyAttributes'] == null
          ? null
          : (map['nonKeyAttributes'] as List).cast<String>(),
      onDemandThroughput: map['onDemandThroughput'] == null
          ? null
          : TableGlobalSecondaryIndexOnDemandThroughput.fromMap(
              (map['onDemandThroughput'] as Map).cast<String, dynamic>(),
            ),
      projectionType: map['projectionType'] as String,
      rangeKey: map['rangeKey'] == null ? null : map['rangeKey'] as String,
      readCapacity: map['readCapacity'] == null
          ? null
          : map['readCapacity'] as int,
      warmThroughput: map['warmThroughput'] == null
          ? null
          : TableGlobalSecondaryIndexWarmThroughput.fromMap(
              (map['warmThroughput'] as Map).cast<String, dynamic>(),
            ),
      writeCapacity: map['writeCapacity'] == null
          ? null
          : map['writeCapacity'] as int,
    );
  }
}
