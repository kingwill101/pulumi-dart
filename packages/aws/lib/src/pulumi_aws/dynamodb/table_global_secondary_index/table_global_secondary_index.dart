// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../table_global_secondary_index_key_schema/table_global_secondary_index_key_schema.dart';
import '../table_global_secondary_index_on_demand_throughput/table_global_secondary_index_on_demand_throughput.dart';
import '../table_global_secondary_index_warm_throughput/table_global_secondary_index_warm_throughput.dart';

class TableGlobalSecondaryIndex {
  /// Name of the hash key in the index; must be defined as an attribute in the resource. Mutually exclusive with <span pulumi-lang-nodejs="`keySchema`" pulumi-lang-dotnet="`KeySchema`" pulumi-lang-go="`keySchema`" pulumi-lang-python="`key_schema`" pulumi-lang-yaml="`keySchema`" pulumi-lang-java="`keySchema`">`key_schema`</span>. Use <span pulumi-lang-nodejs="`keySchema`" pulumi-lang-dotnet="`KeySchema`" pulumi-lang-go="`keySchema`" pulumi-lang-python="`key_schema`" pulumi-lang-yaml="`keySchema`" pulumi-lang-java="`keySchema`">`key_schema`</span> instead.
  final String? hashKey;

  /// Configuration block(s) for the key schema. Mutually exclusive with <span pulumi-lang-nodejs="`hashKey`" pulumi-lang-dotnet="`HashKey`" pulumi-lang-go="`hashKey`" pulumi-lang-python="`hash_key`" pulumi-lang-yaml="`hashKey`" pulumi-lang-java="`hashKey`">`hash_key`</span> and <span pulumi-lang-nodejs="`rangeKey`" pulumi-lang-dotnet="`RangeKey`" pulumi-lang-go="`rangeKey`" pulumi-lang-python="`range_key`" pulumi-lang-yaml="`rangeKey`" pulumi-lang-java="`rangeKey`">`range_key`</span>. Required if <span pulumi-lang-nodejs="`hashKey`" pulumi-lang-dotnet="`HashKey`" pulumi-lang-go="`hashKey`" pulumi-lang-python="`hash_key`" pulumi-lang-yaml="`hashKey`" pulumi-lang-java="`hashKey`">`hash_key`</span> is not specified. Supports multi-attribute keys for the [Multi-Attribute Keys design pattern](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.DesignPattern.MultiAttributeKeys.html). See below.
  final List<TableGlobalSecondaryIndexKeySchema>? keySchemas;

  /// Name of the index.
  final String name;

  /// Only required with `INCLUDE` as a projection type; a list of attributes to project into the index. These do not need to be defined as attributes on the table.
  final List<String>? nonKeyAttributes;

  /// Sets the maximum number of read and write units for the specified on-demand index. See below.
  final TableGlobalSecondaryIndexOnDemandThroughput? onDemandThroughput;

  /// One of `ALL`, `INCLUDE` or `KEYS_ONLY` where `ALL` projects every attribute into the index, `KEYS_ONLY` projects into the index only the table and index<span pulumi-lang-nodejs=" hashKey " pulumi-lang-dotnet=" HashKey " pulumi-lang-go=" hashKey " pulumi-lang-python=" hash_key " pulumi-lang-yaml=" hashKey " pulumi-lang-java=" hashKey "> hash_key </span>and<span pulumi-lang-nodejs=" sortKey " pulumi-lang-dotnet=" SortKey " pulumi-lang-go=" sortKey " pulumi-lang-python=" sort_key " pulumi-lang-yaml=" sortKey " pulumi-lang-java=" sortKey "> sort_key </span>attributes, `INCLUDE` projects into the index all of the attributes that are defined in <span pulumi-lang-nodejs="`nonKeyAttributes`" pulumi-lang-dotnet="`NonKeyAttributes`" pulumi-lang-go="`nonKeyAttributes`" pulumi-lang-python="`non_key_attributes`" pulumi-lang-yaml="`nonKeyAttributes`" pulumi-lang-java="`nonKeyAttributes`">`non_key_attributes`</span> in addition to the attributes that `KEYS_ONLY` project.
  final String projectionType;

  /// Name of the range key; must be defined as an attribute in the resource. Mutually exclusive with <span pulumi-lang-nodejs="`keySchema`" pulumi-lang-dotnet="`KeySchema`" pulumi-lang-go="`keySchema`" pulumi-lang-python="`key_schema`" pulumi-lang-yaml="`keySchema`" pulumi-lang-java="`keySchema`">`key_schema`</span>. Use <span pulumi-lang-nodejs="`keySchema`" pulumi-lang-dotnet="`KeySchema`" pulumi-lang-go="`keySchema`" pulumi-lang-python="`key_schema`" pulumi-lang-yaml="`keySchema`" pulumi-lang-java="`keySchema`">`key_schema`</span> instead.
  final String? rangeKey;

  /// Number of read units for this index. Must be set if<span pulumi-lang-nodejs=" billingMode " pulumi-lang-dotnet=" BillingMode " pulumi-lang-go=" billingMode " pulumi-lang-python=" billing_mode " pulumi-lang-yaml=" billingMode " pulumi-lang-java=" billingMode "> billing_mode </span>is set to PROVISIONED.
  final int? readCapacity;

  /// Sets the number of warm read and write units for this index. See below.
  final TableGlobalSecondaryIndexWarmThroughput? warmThroughput;

  /// Number of write units for this index. Must be set if<span pulumi-lang-nodejs=" billingMode " pulumi-lang-dotnet=" BillingMode " pulumi-lang-go=" billingMode " pulumi-lang-python=" billing_mode " pulumi-lang-yaml=" billingMode " pulumi-lang-java=" billingMode "> billing_mode </span>is set to PROVISIONED.
  final int? writeCapacity;

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
    final map = <String, dynamic>{};
    final hashKeyValue = hashKey;
    if (hashKeyValue != null) {
      map['hashKey'] = hashKeyValue;
    }
    final keySchemasValue = keySchemas;
    if (keySchemasValue != null) {
      map['keySchemas'] = Input.encodeList<TableGlobalSecondaryIndexKeySchema,
          Map<String, dynamic>>(keySchemasValue, (value) => value.toMap());
    }
    map['name'] = name;
    final nonKeyAttributesValue = nonKeyAttributes;
    if (nonKeyAttributesValue != null) {
      map['nonKeyAttributes'] = nonKeyAttributesValue;
    }
    final onDemandThroughputValue = onDemandThroughput;
    if (onDemandThroughputValue != null) {
      map['onDemandThroughput'] = onDemandThroughputValue.toMap();
    }
    map['projectionType'] = projectionType;
    final rangeKeyValue = rangeKey;
    if (rangeKeyValue != null) {
      map['rangeKey'] = rangeKeyValue;
    }
    final readCapacityValue = readCapacity;
    if (readCapacityValue != null) {
      map['readCapacity'] = readCapacityValue;
    }
    final warmThroughputValue = warmThroughput;
    if (warmThroughputValue != null) {
      map['warmThroughput'] = warmThroughputValue.toMap();
    }
    final writeCapacityValue = writeCapacity;
    if (writeCapacityValue != null) {
      map['writeCapacity'] = writeCapacityValue;
    }
    return map;
  }

  factory TableGlobalSecondaryIndex.fromMap(Map<String, dynamic> map) {
    return TableGlobalSecondaryIndex(
      hashKey: map['hashKey'] == null ? null : map['hashKey'] as String,
      keySchemas: map['keySchemas'] == null
          ? null
          : Input.decodeList<TableGlobalSecondaryIndexKeySchema>(
              map['keySchemas'],
              (value) => TableGlobalSecondaryIndexKeySchema.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nonKeyAttributes: map['nonKeyAttributes'] == null
          ? null
          : (map['nonKeyAttributes'] as List).cast<String>(),
      onDemandThroughput: map['onDemandThroughput'] == null
          ? null
          : TableGlobalSecondaryIndexOnDemandThroughput.fromMap(
              (map['onDemandThroughput'] as Map).cast<String, dynamic>()),
      projectionType: map['projectionType'] as String,
      rangeKey: map['rangeKey'] == null ? null : map['rangeKey'] as String,
      readCapacity:
          map['readCapacity'] == null ? null : map['readCapacity'] as int,
      warmThroughput: map['warmThroughput'] == null
          ? null
          : TableGlobalSecondaryIndexWarmThroughput.fromMap(
              (map['warmThroughput'] as Map).cast<String, dynamic>()),
      writeCapacity:
          map['writeCapacity'] == null ? null : map['writeCapacity'] as int,
    );
  }
}
