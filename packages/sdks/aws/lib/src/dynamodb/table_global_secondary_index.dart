// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_global_secondary_index_key_schema.dart';
import 'table_global_secondary_index_on_demand_throughput.dart';
import 'table_global_secondary_index_warm_throughput.dart';

class TableGlobalSecondaryIndex {
  /// Name of the hash key in the index; must be defined as an attribute in the resource. Mutually exclusive with `key_schema`. Use `key_schema` instead.
  final pulumi.Input<String>? hashKey;
  /// Configuration block(s) for the key schema. Mutually exclusive with `hash_key` and `range_key`. Required if `hash_key` is not specified. Supports multi-attribute keys for the [Multi-Attribute Keys design pattern](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.DesignPattern.MultiAttributeKeys.html). See below.
  final pulumi.Input<List<TableGlobalSecondaryIndexKeySchema>>? keySchemas;
  /// Name of the index.
  final pulumi.Input<String> name;
  /// Only required with `INCLUDE` as a projection type; a list of attributes to project into the index. These do not need to be defined as attributes on the table.
  final pulumi.Input<List<String>>? nonKeyAttributes;
  /// Sets the maximum number of read and write units for the specified on-demand index. See below.
  final pulumi.Input<TableGlobalSecondaryIndexOnDemandThroughput>? onDemandThroughput;
  /// One of `ALL`, `INCLUDE` or `KEYS_ONLY` where `ALL` projects every attribute into the index, `KEYS_ONLY` projects into the index only the table and index hash_key and sort_key attributes, `INCLUDE` projects into the index all of the attributes that are defined in `non_key_attributes` in addition to the attributes that `KEYS_ONLY` project.
  final pulumi.Input<String> projectionType;
  /// Name of the range key; must be defined as an attribute in the resource. Mutually exclusive with `key_schema`. Use `key_schema` instead.
  final pulumi.Input<String>? rangeKey;
  /// Number of read units for this index. Must be set if billing_mode is set to PROVISIONED.
  final pulumi.Input<int>? readCapacity;
  /// Sets the number of warm read and write units for this index. See below.
  final pulumi.Input<TableGlobalSecondaryIndexWarmThroughput>? warmThroughput;
  /// Number of write units for this index. Must be set if billing_mode is set to PROVISIONED.
  final pulumi.Input<int>? writeCapacity;

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
      'keySchemas': ?pulumi.Input.mapOptionalInputValue<List<TableGlobalSecondaryIndexKeySchema>, List<Map<String, dynamic>>>(keySchemas, (value) => pulumi.Input.encodeList<TableGlobalSecondaryIndexKeySchema, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'nonKeyAttributes': ?nonKeyAttributes,
      'onDemandThroughput': ?pulumi.Input.mapOptionalInputValue<TableGlobalSecondaryIndexOnDemandThroughput, Map<String, dynamic>>(onDemandThroughput, (value) => value.toMap()),
      'projectionType': projectionType,
      'rangeKey': ?rangeKey,
      'readCapacity': ?readCapacity,
      'warmThroughput': ?pulumi.Input.mapOptionalInputValue<TableGlobalSecondaryIndexWarmThroughput, Map<String, dynamic>>(warmThroughput, (value) => value.toMap()),
      'writeCapacity': ?writeCapacity,
    };
  }

  factory TableGlobalSecondaryIndex.fromMap(Map<String, dynamic> map) {
    return TableGlobalSecondaryIndex(
      hashKey: map['hashKey'] == null ? null : (map['hashKey'] as String).input(),
      keySchemas: map['keySchemas'] == null ? null : (pulumi.Input.decodeList<TableGlobalSecondaryIndexKeySchema>(map['keySchemas'], (value) => TableGlobalSecondaryIndexKeySchema.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      nonKeyAttributes: map['nonKeyAttributes'] == null ? null : ((map['nonKeyAttributes'] as List).cast<String>()).input(),
      onDemandThroughput: map['onDemandThroughput'] == null ? null : (TableGlobalSecondaryIndexOnDemandThroughput.fromMap((map['onDemandThroughput'] as Map).cast<String, dynamic>())).input(),
      projectionType: (map['projectionType'] as String).input(),
      rangeKey: map['rangeKey'] == null ? null : (map['rangeKey'] as String).input(),
      readCapacity: map['readCapacity'] == null ? null : (map['readCapacity'] as int).input(),
      warmThroughput: map['warmThroughput'] == null ? null : (TableGlobalSecondaryIndexWarmThroughput.fromMap((map['warmThroughput'] as Map).cast<String, dynamic>())).input(),
      writeCapacity: map['writeCapacity'] == null ? null : (map['writeCapacity'] as int).input(),
    );
  }
}

