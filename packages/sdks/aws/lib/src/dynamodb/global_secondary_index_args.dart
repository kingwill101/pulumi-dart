// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_secondary_index_key_schema.dart';
import 'global_secondary_index_on_demand_throughput.dart';
import 'global_secondary_index_projection.dart';
import 'global_secondary_index_provisioned_throughput.dart';
import 'global_secondary_index_timeouts.dart';
import 'global_secondary_index_warm_throughput.dart';

/// {@template pulumi_dynamodb_global_secondary_index_global_secondary_index_args_doc}
/// The set of arguments for GlobalSecondaryIndex.
/// {@endtemplate}
/// {@macro pulumi_dynamodb_global_secondary_index_global_secondary_index_args_doc}
class GlobalSecondaryIndexArgs {
  /// Name of the index.
  final pulumi.Input<String> indexName;
  /// Set of nested attribute definitions.
  /// At least 1 element defining a `HASH` is required.
  /// All elements with the `keyType` of `HASH` must precede elements with `keyType` of `RANGE`.
  /// Changing any values in `keySchema` will re-create the resource.
  /// See `keySchema` below.
  final pulumi.Input<List<GlobalSecondaryIndexKeySchema>> keySchemas;
  /// Sets the maximum number of read and write units for the index.
  /// See `onDemandThroughput` below.
  /// Only valid if the table's `billingMode` is `PAY_PER_REQUEST`.
  final pulumi.Input<GlobalSecondaryIndexOnDemandThroughput>? onDemandThroughput;
  /// Describes which attributes from the table are represented in the index.
  /// See `projection` below.
  final pulumi.Input<GlobalSecondaryIndexProjection>? projection;
  /// Provisioned throughput for the index.
  /// See `provisionedThroughput` below.
  /// Required if the table's `billingMode` is `PROVISIONED`.
  final pulumi.Input<GlobalSecondaryIndexProvisionedThroughput>? provisionedThroughput;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the table this index belongs to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> tableName;
  final pulumi.Input<GlobalSecondaryIndexTimeouts>? timeouts;
  /// Sets the number of warm read and write units for this index.
  /// See `warmThroughput` below.
  final pulumi.Input<GlobalSecondaryIndexWarmThroughput>? warmThroughput;

  /// Creates a new [GlobalSecondaryIndexArgs].
  /// [indexName] Name of the index.
  /// [keySchemas] Set of nested attribute definitions.
  /// [onDemandThroughput] Sets the maximum number of read and write units for the index.
  /// [projection] Describes which attributes from the table are represented in the index.
  /// [provisionedThroughput] Provisioned throughput for the index.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableName] Name of the table this index belongs to.
  /// [timeouts] Optional.
  /// [warmThroughput] Sets the number of warm read and write units for this index.
  const GlobalSecondaryIndexArgs({
    required this.indexName,
    required this.keySchemas,
    this.onDemandThroughput,
    this.projection,
    this.provisionedThroughput,
    this.region,
    required this.tableName,
    this.timeouts,
    this.warmThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'indexName': indexName,
      'keySchemas': pulumi.Input.mapInputValue<List<GlobalSecondaryIndexKeySchema>, List<Map<String, dynamic>>>(keySchemas, (value) => pulumi.Input.encodeList<GlobalSecondaryIndexKeySchema, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onDemandThroughput': ?pulumi.Input.mapOptionalInputValue<GlobalSecondaryIndexOnDemandThroughput, Map<String, dynamic>>(onDemandThroughput, (value) => value.toMap()),
      'projection': ?pulumi.Input.mapOptionalInputValue<GlobalSecondaryIndexProjection, Map<String, dynamic>>(projection, (value) => value.toMap()),
      'provisionedThroughput': ?pulumi.Input.mapOptionalInputValue<GlobalSecondaryIndexProvisionedThroughput, Map<String, dynamic>>(provisionedThroughput, (value) => value.toMap()),
      'region': ?region,
      'tableName': tableName,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<GlobalSecondaryIndexTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'warmThroughput': ?pulumi.Input.mapOptionalInputValue<GlobalSecondaryIndexWarmThroughput, Map<String, dynamic>>(warmThroughput, (value) => value.toMap()),
    };
  }

  factory GlobalSecondaryIndexArgs.fromMap(Map<String, dynamic> map) {
    return GlobalSecondaryIndexArgs(
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
      keySchemas: pulumi.Input.fromValue(pulumi.Input.decodeList<GlobalSecondaryIndexKeySchema>(map['keySchemas']!, (value) => GlobalSecondaryIndexKeySchema.fromMap((value as Map).cast<String, dynamic>()))),
      onDemandThroughput: (() { final guardedValue = map['onDemandThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GlobalSecondaryIndexOnDemandThroughput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      projection: (() { final guardedValue = map['projection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GlobalSecondaryIndexProjection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisionedThroughput: (() { final guardedValue = map['provisionedThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GlobalSecondaryIndexProvisionedThroughput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GlobalSecondaryIndexTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      warmThroughput: (() { final guardedValue = map['warmThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GlobalSecondaryIndexWarmThroughput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
