// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_secondary_index_key_schema.dart';
import 'global_secondary_index_on_demand_throughput.dart';
import 'global_secondary_index_projection.dart';
import 'global_secondary_index_provisioned_throughput.dart';
import 'global_secondary_index_timeouts.dart';
import 'global_secondary_index_warm_throughput.dart';

/// Input properties used for looking up and filtering GlobalSecondaryIndex resources.
class GlobalSecondaryIndexState {
  /// ARN of the GSI.
  final pulumi.Input<String>? arn;
  /// Name of the index.
  final pulumi.Input<String>? indexName;
  /// Set of nested attribute definitions.
  /// At least 1 element defining a `HASH` is required.
  /// All elements with the `key_type` of `HASH` must precede elements with `key_type` of `RANGE`.
  /// Changing any values in `key_schema` will re-create the resource.
  /// See `key_schema` below.
  final pulumi.Input<List<GlobalSecondaryIndexKeySchema>>? keySchemas;
  /// Sets the maximum number of read and write units for the index.
  /// See `on_demand_throughput` below.
  /// Only valid if the table's `billing_mode` is `PAY_PER_REQUEST`.
  final pulumi.Input<GlobalSecondaryIndexOnDemandThroughput>? onDemandThroughput;
  /// Describes which attributes from the table are represented in the index.
  /// See `projection` below.
  final pulumi.Input<GlobalSecondaryIndexProjection>? projection;
  /// Provisioned throughput for the index.
  /// See `provisioned_throughput` below.
  /// Required if the table's `billing_mode` is `PROVISIONED`.
  final pulumi.Input<GlobalSecondaryIndexProvisionedThroughput>? provisionedThroughput;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the table this index belongs to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? tableName;
  final pulumi.Input<GlobalSecondaryIndexTimeouts>? timeouts;
  /// Sets the number of warm read and write units for this index.
  /// See `warm_throughput` below.
  final pulumi.Input<GlobalSecondaryIndexWarmThroughput>? warmThroughput;

  /// Creates a new [GlobalSecondaryIndexState].
  /// [arn] ARN of the GSI.
  /// [indexName] Name of the index.
  /// [keySchemas] Set of nested attribute definitions.
  /// [onDemandThroughput] Sets the maximum number of read and write units for the index.
  /// [projection] Describes which attributes from the table are represented in the index.
  /// [provisionedThroughput] Provisioned throughput for the index.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableName] Name of the table this index belongs to.
  /// [timeouts] Optional.
  /// [warmThroughput] Sets the number of warm read and write units for this index.
  GlobalSecondaryIndexState({
    this.arn,
    this.indexName,
    this.keySchemas,
    this.onDemandThroughput,
    this.projection,
    this.provisionedThroughput,
    this.region,
    this.tableName,
    this.timeouts,
    this.warmThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'indexName': ?indexName,
      'keySchemas': ?pulumi.Input.mapOptionalInputValue<List<GlobalSecondaryIndexKeySchema>, List<Map<String, dynamic>>>(keySchemas, (value) => pulumi.Input.encodeList<GlobalSecondaryIndexKeySchema, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onDemandThroughput': ?pulumi.Input.mapOptionalInputValue<GlobalSecondaryIndexOnDemandThroughput, Map<String, dynamic>>(onDemandThroughput, (value) => value.toMap()),
      'projection': ?pulumi.Input.mapOptionalInputValue<GlobalSecondaryIndexProjection, Map<String, dynamic>>(projection, (value) => value.toMap()),
      'provisionedThroughput': ?pulumi.Input.mapOptionalInputValue<GlobalSecondaryIndexProvisionedThroughput, Map<String, dynamic>>(provisionedThroughput, (value) => value.toMap()),
      'region': ?region,
      'tableName': ?tableName,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<GlobalSecondaryIndexTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'warmThroughput': ?pulumi.Input.mapOptionalInputValue<GlobalSecondaryIndexWarmThroughput, Map<String, dynamic>>(warmThroughput, (value) => value.toMap()),
    };
  }

  factory GlobalSecondaryIndexState.fromMap(Map<String, dynamic> map) {
    return GlobalSecondaryIndexState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      indexName: map['indexName'] == null ? null : ((map['indexName'] as String).input()).input(),
      keySchemas: map['keySchemas'] == null ? null : ((pulumi.Input.decodeList<GlobalSecondaryIndexKeySchema>(map['keySchemas']!, (value) => GlobalSecondaryIndexKeySchema.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      onDemandThroughput: map['onDemandThroughput'] == null ? null : ((GlobalSecondaryIndexOnDemandThroughput.fromMap((map['onDemandThroughput']! as Map).cast<String, dynamic>())).input()).input(),
      projection: map['projection'] == null ? null : ((GlobalSecondaryIndexProjection.fromMap((map['projection']! as Map).cast<String, dynamic>())).input()).input(),
      provisionedThroughput: map['provisionedThroughput'] == null ? null : ((GlobalSecondaryIndexProvisionedThroughput.fromMap((map['provisionedThroughput']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tableName: map['tableName'] == null ? null : ((map['tableName'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((GlobalSecondaryIndexTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      warmThroughput: map['warmThroughput'] == null ? null : ((GlobalSecondaryIndexWarmThroughput.fromMap((map['warmThroughput']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

