// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../global_secondary_index_key_schema/global_secondary_index_key_schema.dart';
import '../global_secondary_index_on_demand_throughput/global_secondary_index_on_demand_throughput.dart';
import '../global_secondary_index_projection/global_secondary_index_projection.dart';
import '../global_secondary_index_provisioned_throughput/global_secondary_index_provisioned_throughput.dart';
import '../global_secondary_index_timeouts/global_secondary_index_timeouts.dart';
import '../global_secondary_index_warm_throughput/global_secondary_index_warm_throughput.dart';

/// The set of arguments for GlobalSecondaryIndex.
class GlobalSecondaryIndexArgs {
  /// Name of the index.
  final Input<String> indexName;

  /// Set of nested attribute definitions.
  /// At least 1 element defining a `HASH` is required.
  /// All elements with the `key_type` of `HASH` must precede elements with `key_type` of `RANGE`.
  /// Changing any values in `key_schema` will re-create the resource.
  /// See `key_schema` below.
  final Input<List<GlobalSecondaryIndexKeySchema>>? keySchemas;

  /// Sets the maximum number of read and write units for the index.
  /// See `on_demand_throughput` below.
  /// Only valid if the table's `billing_mode` is `PAY_PER_REQUEST`.
  final Input<GlobalSecondaryIndexOnDemandThroughput>? onDemandThroughput;

  /// Describes which attributes from the table are represented in the index.
  /// See `projection` below.
  final Input<GlobalSecondaryIndexProjection>? projection;

  /// Provisioned throughput for the index.
  /// See `provisioned_throughput` below.
  /// Required if the table's `billing_mode` is `PROVISIONED`.
  final Input<GlobalSecondaryIndexProvisionedThroughput>? provisionedThroughput;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the table this index belongs to.
  ///
  /// The following arguments are optional:
  final Input<String> tableName;
  final Input<GlobalSecondaryIndexTimeouts>? timeouts;

  /// Sets the number of warm read and write units for this index.
  /// See `warm_throughput` below.
  final Input<GlobalSecondaryIndexWarmThroughput>? warmThroughput;

  GlobalSecondaryIndexArgs({
    required this.indexName,
    this.keySchemas,
    this.onDemandThroughput,
    this.projection,
    this.provisionedThroughput,
    this.region,
    required this.tableName,
    this.timeouts,
    this.warmThroughput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['indexName'] = indexName;
    final keySchemasValue = keySchemas;
    if (keySchemasValue != null) {
      map['keySchemas'] = Input.mapOptionalInputValue<
              List<GlobalSecondaryIndexKeySchema>, List<Map<String, dynamic>>>(
          keySchemasValue,
          (value) => Input.encodeList<GlobalSecondaryIndexKeySchema,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final onDemandThroughputValue = onDemandThroughput;
    if (onDemandThroughputValue != null) {
      map['onDemandThroughput'] = Input.mapOptionalInputValue<
              GlobalSecondaryIndexOnDemandThroughput, Map<String, dynamic>>(
          onDemandThroughputValue, (value) => value.toMap());
    }
    final projectionValue = projection;
    if (projectionValue != null) {
      map['projection'] = Input.mapOptionalInputValue<
          GlobalSecondaryIndexProjection,
          Map<String, dynamic>>(projectionValue, (value) => value.toMap());
    }
    final provisionedThroughputValue = provisionedThroughput;
    if (provisionedThroughputValue != null) {
      map['provisionedThroughput'] = Input.mapOptionalInputValue<
              GlobalSecondaryIndexProvisionedThroughput, Map<String, dynamic>>(
          provisionedThroughputValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['tableName'] = tableName;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          GlobalSecondaryIndexTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final warmThroughputValue = warmThroughput;
    if (warmThroughputValue != null) {
      map['warmThroughput'] = Input.mapOptionalInputValue<
          GlobalSecondaryIndexWarmThroughput,
          Map<String, dynamic>>(warmThroughputValue, (value) => value.toMap());
    }
    return map;
  }

  factory GlobalSecondaryIndexArgs.fromMap(Map<String, dynamic> map) {
    return GlobalSecondaryIndexArgs(
      indexName: Input.asInput<String>(map['indexName']),
      keySchemas: Input.asOptionalInput<List<GlobalSecondaryIndexKeySchema>>(
          map['keySchemas']),
      onDemandThroughput:
          Input.asOptionalInput<GlobalSecondaryIndexOnDemandThroughput>(
              map['onDemandThroughput']),
      projection: Input.asOptionalInput<GlobalSecondaryIndexProjection>(
          map['projection']),
      provisionedThroughput:
          Input.asOptionalInput<GlobalSecondaryIndexProvisionedThroughput>(
              map['provisionedThroughput']),
      region: Input.asOptionalInput<String>(map['region']),
      tableName: Input.asInput<String>(map['tableName']),
      timeouts:
          Input.asOptionalInput<GlobalSecondaryIndexTimeouts>(map['timeouts']),
      warmThroughput: Input.asOptionalInput<GlobalSecondaryIndexWarmThroughput>(
          map['warmThroughput']),
    );
  }
}
