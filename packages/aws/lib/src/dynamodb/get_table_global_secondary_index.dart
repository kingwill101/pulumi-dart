// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_global_secondary_index_key_schema.dart';
import 'get_table_global_secondary_index_on_demand_throughput.dart';
import 'get_table_global_secondary_index_warm_throughput.dart';

class GetTableGlobalSecondaryIndex {
  final String hashKey;
  final List<GetTableGlobalSecondaryIndexKeySchema> keySchemas;
  /// Name of the DynamoDB table.
  final String name;
  final List<String> nonKeyAttributes;
  final List<GetTableGlobalSecondaryIndexOnDemandThroughput> onDemandThroughputs;
  final String projectionType;
  final String rangeKey;
  final int readCapacity;
  final List<GetTableGlobalSecondaryIndexWarmThroughput> warmThroughputs;
  final int writeCapacity;

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
      'keySchemas': pulumi.Input.encodeList<GetTableGlobalSecondaryIndexKeySchema, Map<String, dynamic>>(keySchemas, (value) => value.toMap()),
      'name': name,
      'nonKeyAttributes': nonKeyAttributes,
      'onDemandThroughputs': pulumi.Input.encodeList<GetTableGlobalSecondaryIndexOnDemandThroughput, Map<String, dynamic>>(onDemandThroughputs, (value) => value.toMap()),
      'projectionType': projectionType,
      'rangeKey': rangeKey,
      'readCapacity': readCapacity,
      'warmThroughputs': pulumi.Input.encodeList<GetTableGlobalSecondaryIndexWarmThroughput, Map<String, dynamic>>(warmThroughputs, (value) => value.toMap()),
      'writeCapacity': writeCapacity,
    };
  }

  factory GetTableGlobalSecondaryIndex.fromMap(Map<String, dynamic> map) {
    return GetTableGlobalSecondaryIndex(
      hashKey: map['hashKey'] as String,
      keySchemas: pulumi.Input.decodeList<GetTableGlobalSecondaryIndexKeySchema>(map['keySchemas'], (value) => GetTableGlobalSecondaryIndexKeySchema.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      nonKeyAttributes: (map['nonKeyAttributes'] as List).cast<String>(),
      onDemandThroughputs: pulumi.Input.decodeList<GetTableGlobalSecondaryIndexOnDemandThroughput>(map['onDemandThroughputs'], (value) => GetTableGlobalSecondaryIndexOnDemandThroughput.fromMap((value as Map).cast<String, dynamic>())),
      projectionType: map['projectionType'] as String,
      rangeKey: map['rangeKey'] as String,
      readCapacity: map['readCapacity'] as int,
      warmThroughputs: pulumi.Input.decodeList<GetTableGlobalSecondaryIndexWarmThroughput>(map['warmThroughputs'], (value) => GetTableGlobalSecondaryIndexWarmThroughput.fromMap((value as Map).cast<String, dynamic>())),
      writeCapacity: map['writeCapacity'] as int,
    );
  }
}

