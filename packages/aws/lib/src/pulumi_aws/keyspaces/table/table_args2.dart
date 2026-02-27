// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../table_capacity_specification/table_capacity_specification.dart';
import '../table_client_side_timestamps/table_client_side_timestamps.dart';
import '../table_comment/table_comment.dart';
import '../table_encryption_specification/table_encryption_specification.dart';
import '../table_point_in_time_recovery/table_point_in_time_recovery2.dart';
import '../table_schema_definition/table_schema_definition.dart';
import '../table_ttl/table_ttl2.dart';

/// The set of arguments for Table.
class TableArgs2 {
  /// Specifies the read/write throughput capacity mode for the table.
  final Input<TableCapacitySpecification>? capacitySpecification;

  /// Enables client-side timestamps for the table. By default, the setting is disabled.
  final Input<TableClientSideTimestamps>? clientSideTimestamps;

  /// A description of the table.
  final Input<TableComment>? comment;

  /// The default Time to Live setting in seconds for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl).
  final Input<int>? defaultTimeToLive;

  /// Specifies how the encryption key for encryption at rest is managed for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html).
  final Input<TableEncryptionSpecification>? encryptionSpecification;

  /// The name of the keyspace that the table is going to be created in.
  final Input<String> keyspaceName;

  /// Specifies if point-in-time recovery is enabled or disabled for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html).
  final Input<TablePointInTimeRecovery2>? pointInTimeRecovery;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Describes the schema of the table.
  final Input<TableSchemaDefinition> schemaDefinition;

  /// The name of the table.
  ///
  /// The following arguments are optional:
  final Input<String> tableName;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Enables Time to Live custom settings for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html).
  final Input<TableTtl2>? ttl;

  TableArgs2({
    this.capacitySpecification,
    this.clientSideTimestamps,
    this.comment,
    this.defaultTimeToLive,
    this.encryptionSpecification,
    required this.keyspaceName,
    this.pointInTimeRecovery,
    this.region,
    required this.schemaDefinition,
    required this.tableName,
    this.tags,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacitySpecificationValue = capacitySpecification;
    if (capacitySpecificationValue != null) {
      map['capacitySpecification'] = Input.mapOptionalInputValue<
              TableCapacitySpecification, Map<String, dynamic>>(
          capacitySpecificationValue, (value) => value.toMap());
    }
    final clientSideTimestampsValue = clientSideTimestamps;
    if (clientSideTimestampsValue != null) {
      map['clientSideTimestamps'] = Input.mapOptionalInputValue<
              TableClientSideTimestamps, Map<String, dynamic>>(
          clientSideTimestampsValue, (value) => value.toMap());
    }
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] =
          Input.mapOptionalInputValue<TableComment, Map<String, dynamic>>(
              commentValue, (value) => value.toMap());
    }
    final defaultTimeToLiveValue = defaultTimeToLive;
    if (defaultTimeToLiveValue != null) {
      map['defaultTimeToLive'] = defaultTimeToLiveValue;
    }
    final encryptionSpecificationValue = encryptionSpecification;
    if (encryptionSpecificationValue != null) {
      map['encryptionSpecification'] = Input.mapOptionalInputValue<
              TableEncryptionSpecification, Map<String, dynamic>>(
          encryptionSpecificationValue, (value) => value.toMap());
    }
    map['keyspaceName'] = keyspaceName;
    final pointInTimeRecoveryValue = pointInTimeRecovery;
    if (pointInTimeRecoveryValue != null) {
      map['pointInTimeRecovery'] = Input.mapOptionalInputValue<
              TablePointInTimeRecovery2, Map<String, dynamic>>(
          pointInTimeRecoveryValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['schemaDefinition'] =
        Input.mapInputValue<TableSchemaDefinition, Map<String, dynamic>>(
            schemaDefinition, (value) => value.toMap());
    map['tableName'] = tableName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = Input.mapOptionalInputValue<TableTtl2, Map<String, dynamic>>(
          ttlValue, (value) => value.toMap());
    }
    return map;
  }

  factory TableArgs2.fromMap(Map<String, dynamic> map) {
    return TableArgs2(
      capacitySpecification: Input.asOptionalInput<TableCapacitySpecification>(
          map['capacitySpecification']),
      clientSideTimestamps: Input.asOptionalInput<TableClientSideTimestamps>(
          map['clientSideTimestamps']),
      comment: Input.asOptionalInput<TableComment>(map['comment']),
      defaultTimeToLive: Input.asOptionalInput<int>(map['defaultTimeToLive']),
      encryptionSpecification:
          Input.asOptionalInput<TableEncryptionSpecification>(
              map['encryptionSpecification']),
      keyspaceName: Input.asInput<String>(map['keyspaceName']),
      pointInTimeRecovery: Input.asOptionalInput<TablePointInTimeRecovery2>(
          map['pointInTimeRecovery']),
      region: Input.asOptionalInput<String>(map['region']),
      schemaDefinition:
          Input.asInput<TableSchemaDefinition>(map['schemaDefinition']),
      tableName: Input.asInput<String>(map['tableName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      ttl: Input.asOptionalInput<TableTtl2>(map['ttl']),
    );
  }
}
