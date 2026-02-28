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
  /// All elements with the `key_type` of `HASH` must precede elements with `key_type` of `RANGE`.
  /// Changing any values in `key_schema` will re-create the resource.
  /// See `key_schema` below.
  final pulumi.Input<List<GlobalSecondaryIndexKeySchema>>? keySchemas;

  /// Sets the maximum number of read and write units for the index.
  /// See `on_demand_throughput` below.
  /// Only valid if the table's `billing_mode` is `PAY_PER_REQUEST`.
  final pulumi.Input<GlobalSecondaryIndexOnDemandThroughput>?
      onDemandThroughput;

  /// Describes which attributes from the table are represented in the index.
  /// See `projection` below.
  final pulumi.Input<GlobalSecondaryIndexProjection>? projection;

  /// Provisioned throughput for the index.
  /// See `provisioned_throughput` below.
  /// Required if the table's `billing_mode` is `PROVISIONED`.
  final pulumi.Input<GlobalSecondaryIndexProvisionedThroughput>?
      provisionedThroughput;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of the table this index belongs to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> tableName;
  final pulumi.Input<GlobalSecondaryIndexTimeouts>? timeouts;

  /// Sets the number of warm read and write units for this index.
  /// See `warm_throughput` below.
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
  GlobalSecondaryIndexArgs({
    required String indexName,
    List<GlobalSecondaryIndexKeySchema>? keySchemas,
    GlobalSecondaryIndexOnDemandThroughput? onDemandThroughput,
    GlobalSecondaryIndexProjection? projection,
    GlobalSecondaryIndexProvisionedThroughput? provisionedThroughput,
    String? region,
    required String tableName,
    GlobalSecondaryIndexTimeouts? timeouts,
    GlobalSecondaryIndexWarmThroughput? warmThroughput,
  })  : indexName = pulumi.Input.asInput<String>(indexName),
        keySchemas =
            pulumi.Input.asOptionalInput<List<GlobalSecondaryIndexKeySchema>>(
                keySchemas),
        onDemandThroughput = pulumi.Input.asOptionalInput<
            GlobalSecondaryIndexOnDemandThroughput>(onDemandThroughput),
        projection =
            pulumi.Input.asOptionalInput<GlobalSecondaryIndexProjection>(
                projection),
        provisionedThroughput = pulumi.Input.asOptionalInput<
            GlobalSecondaryIndexProvisionedThroughput>(provisionedThroughput),
        region = pulumi.Input.asOptionalInput<String>(region),
        tableName = pulumi.Input.asInput<String>(tableName),
        timeouts = pulumi.Input.asOptionalInput<GlobalSecondaryIndexTimeouts>(
            timeouts),
        warmThroughput =
            pulumi.Input.asOptionalInput<GlobalSecondaryIndexWarmThroughput>(
                warmThroughput);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['indexName'] = indexName;
    final keySchemasValue = keySchemas;
    if (keySchemasValue != null) {
      map['keySchemas'] = pulumi.Input.mapOptionalInputValue<
              List<GlobalSecondaryIndexKeySchema>, List<Map<String, dynamic>>>(
          keySchemasValue,
          (value) => pulumi.Input.encodeList<GlobalSecondaryIndexKeySchema,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final onDemandThroughputValue = onDemandThroughput;
    if (onDemandThroughputValue != null) {
      map['onDemandThroughput'] = pulumi.Input.mapOptionalInputValue<
              GlobalSecondaryIndexOnDemandThroughput, Map<String, dynamic>>(
          onDemandThroughputValue, (value) => value.toMap());
    }
    final projectionValue = projection;
    if (projectionValue != null) {
      map['projection'] = pulumi.Input.mapOptionalInputValue<
          GlobalSecondaryIndexProjection,
          Map<String, dynamic>>(projectionValue, (value) => value.toMap());
    }
    final provisionedThroughputValue = provisionedThroughput;
    if (provisionedThroughputValue != null) {
      map['provisionedThroughput'] = pulumi.Input.mapOptionalInputValue<
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
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          GlobalSecondaryIndexTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final warmThroughputValue = warmThroughput;
    if (warmThroughputValue != null) {
      map['warmThroughput'] = pulumi.Input.mapOptionalInputValue<
          GlobalSecondaryIndexWarmThroughput,
          Map<String, dynamic>>(warmThroughputValue, (value) => value.toMap());
    }
    return map;
  }

  factory GlobalSecondaryIndexArgs.fromMap(Map<String, dynamic> map) {
    return GlobalSecondaryIndexArgs(
      indexName: map['indexName'] as String,
      keySchemas: map['keySchemas'] == null
          ? null
          : pulumi.Input.decodeList<GlobalSecondaryIndexKeySchema>(
              map['keySchemas'],
              (value) => GlobalSecondaryIndexKeySchema.fromMap(
                  (value as Map).cast<String, dynamic>())),
      onDemandThroughput: map['onDemandThroughput'] == null
          ? null
          : GlobalSecondaryIndexOnDemandThroughput.fromMap(
              (map['onDemandThroughput'] as Map).cast<String, dynamic>()),
      projection: map['projection'] == null
          ? null
          : GlobalSecondaryIndexProjection.fromMap(
              (map['projection'] as Map).cast<String, dynamic>()),
      provisionedThroughput: map['provisionedThroughput'] == null
          ? null
          : GlobalSecondaryIndexProvisionedThroughput.fromMap(
              (map['provisionedThroughput'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tableName: map['tableName'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : GlobalSecondaryIndexTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
      warmThroughput: map['warmThroughput'] == null
          ? null
          : GlobalSecondaryIndexWarmThroughput.fromMap(
              (map['warmThroughput'] as Map).cast<String, dynamic>()),
    );
  }
}
