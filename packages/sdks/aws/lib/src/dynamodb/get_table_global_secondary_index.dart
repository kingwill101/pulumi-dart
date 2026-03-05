// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_global_secondary_index_key_schema.dart';
import 'get_table_global_secondary_index_on_demand_throughput.dart';
import 'get_table_global_secondary_index_warm_throughput.dart';

class GetTableGlobalSecondaryIndex {
  final pulumi.Input<String> hashKey;
  final pulumi.Input<List<GetTableGlobalSecondaryIndexKeySchema>> keySchemas;
  /// Name of the DynamoDB table.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> nonKeyAttributes;
  final pulumi.Input<List<GetTableGlobalSecondaryIndexOnDemandThroughput>> onDemandThroughputs;
  final pulumi.Input<String> projectionType;
  final pulumi.Input<String> rangeKey;
  final pulumi.Input<int> readCapacity;
  final pulumi.Input<List<GetTableGlobalSecondaryIndexWarmThroughput>> warmThroughputs;
  final pulumi.Input<int> writeCapacity;

  /// Creates a new [GetTableGlobalSecondaryIndex].
  /// [hashKey] Required.
  /// [keySchemas] Required.
  /// [name] Name of the DynamoDB table.
  /// [nonKeyAttributes] Required.
  /// [onDemandThroughputs] Required.
  /// [projectionType] Required.
  /// [rangeKey] Required.
  /// [readCapacity] Required.
  /// [warmThroughputs] Required.
  /// [writeCapacity] Required.
  GetTableGlobalSecondaryIndex({
    required this.hashKey,
    required this.keySchemas,
    required this.name,
    required this.nonKeyAttributes,
    required this.onDemandThroughputs,
    required this.projectionType,
    required this.rangeKey,
    required this.readCapacity,
    required this.warmThroughputs,
    required this.writeCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hashKey': hashKey,
      'keySchemas': pulumi.Input.mapInputValue<List<GetTableGlobalSecondaryIndexKeySchema>, List<Map<String, dynamic>>>(keySchemas, (value) => pulumi.Input.encodeList<GetTableGlobalSecondaryIndexKeySchema, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'nonKeyAttributes': nonKeyAttributes,
      'onDemandThroughputs': pulumi.Input.mapInputValue<List<GetTableGlobalSecondaryIndexOnDemandThroughput>, List<Map<String, dynamic>>>(onDemandThroughputs, (value) => pulumi.Input.encodeList<GetTableGlobalSecondaryIndexOnDemandThroughput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projectionType': projectionType,
      'rangeKey': rangeKey,
      'readCapacity': readCapacity,
      'warmThroughputs': pulumi.Input.mapInputValue<List<GetTableGlobalSecondaryIndexWarmThroughput>, List<Map<String, dynamic>>>(warmThroughputs, (value) => pulumi.Input.encodeList<GetTableGlobalSecondaryIndexWarmThroughput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'writeCapacity': writeCapacity,
    };
  }

  factory GetTableGlobalSecondaryIndex.fromMap(Map<String, dynamic> map) {
    return GetTableGlobalSecondaryIndex(
      hashKey: pulumi.Input.fromValue(map['hashKey'] as String),
      keySchemas: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTableGlobalSecondaryIndexKeySchema>(map['keySchemas']!, (value) => GetTableGlobalSecondaryIndexKeySchema.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      nonKeyAttributes: pulumi.Input.fromValue((map['nonKeyAttributes'] as List).cast<String>()),
      onDemandThroughputs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTableGlobalSecondaryIndexOnDemandThroughput>(map['onDemandThroughputs']!, (value) => GetTableGlobalSecondaryIndexOnDemandThroughput.fromMap((value as Map).cast<String, dynamic>()))),
      projectionType: pulumi.Input.fromValue(map['projectionType'] as String),
      rangeKey: pulumi.Input.fromValue(map['rangeKey'] as String),
      readCapacity: pulumi.Input.fromValue(map['readCapacity'] as int),
      warmThroughputs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTableGlobalSecondaryIndexWarmThroughput>(map['warmThroughputs']!, (value) => GetTableGlobalSecondaryIndexWarmThroughput.fromMap((value as Map).cast<String, dynamic>()))),
      writeCapacity: pulumi.Input.fromValue(map['writeCapacity'] as int),
    );
  }
}

