// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../table_capacity_specification/table_capacity_specification.dart';
import '../table_client_side_timestamps/table_client_side_timestamps.dart';
import '../table_comment/table_comment.dart';
import '../table_encryption_specification/table_encryption_specification.dart';
import '../table_point_in_time_recovery/table_point_in_time_recovery_keyspaces.dart';
import '../table_schema_definition/table_schema_definition.dart';
import '../table_ttl/table_ttl_keyspaces.dart';

/// The set of arguments for Table.
class TableKeyspacesArgs {
  /// Specifies the read/write throughput capacity mode for the table.
  final pulumi.Input<TableCapacitySpecification>? capacitySpecification;

  /// Enables client-side timestamps for the table. By default, the setting is disabled.
  final pulumi.Input<TableClientSideTimestamps>? clientSideTimestamps;

  /// A description of the table.
  final pulumi.Input<TableComment>? comment;

  /// The default Time to Live setting in seconds for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl).
  final pulumi.Input<int>? defaultTimeToLive;

  /// Specifies how the encryption key for encryption at rest is managed for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html).
  final pulumi.Input<TableEncryptionSpecification>? encryptionSpecification;

  /// The name of the keyspace that the table is going to be created in.
  final pulumi.Input<String> keyspaceName;

  /// Specifies if point-in-time recovery is enabled or disabled for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html).
  final pulumi.Input<TablePointInTimeRecoveryKeyspaces>? pointInTimeRecovery;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Describes the schema of the table.
  final pulumi.Input<TableSchemaDefinition> schemaDefinition;

  /// The name of the table.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> tableName;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Enables Time to Live custom settings for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html).
  final pulumi.Input<TableTtlKeyspaces>? ttl;

  TableKeyspacesArgs({
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
      map['capacitySpecification'] = pulumi.Input.mapOptionalInputValue<
              TableCapacitySpecification, Map<String, dynamic>>(
          capacitySpecificationValue, (value) => value.toMap());
    }
    final clientSideTimestampsValue = clientSideTimestamps;
    if (clientSideTimestampsValue != null) {
      map['clientSideTimestamps'] = pulumi.Input.mapOptionalInputValue<
              TableClientSideTimestamps, Map<String, dynamic>>(
          clientSideTimestampsValue, (value) => value.toMap());
    }
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = pulumi.Input.mapOptionalInputValue<TableComment,
          Map<String, dynamic>>(commentValue, (value) => value.toMap());
    }
    final defaultTimeToLiveValue = defaultTimeToLive;
    if (defaultTimeToLiveValue != null) {
      map['defaultTimeToLive'] = defaultTimeToLiveValue;
    }
    final encryptionSpecificationValue = encryptionSpecification;
    if (encryptionSpecificationValue != null) {
      map['encryptionSpecification'] = pulumi.Input.mapOptionalInputValue<
              TableEncryptionSpecification, Map<String, dynamic>>(
          encryptionSpecificationValue, (value) => value.toMap());
    }
    map['keyspaceName'] = keyspaceName;
    final pointInTimeRecoveryValue = pointInTimeRecovery;
    if (pointInTimeRecoveryValue != null) {
      map['pointInTimeRecovery'] = pulumi.Input.mapOptionalInputValue<
              TablePointInTimeRecoveryKeyspaces, Map<String, dynamic>>(
          pointInTimeRecoveryValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['schemaDefinition'] =
        pulumi.Input.mapInputValue<TableSchemaDefinition, Map<String, dynamic>>(
            schemaDefinition, (value) => value.toMap());
    map['tableName'] = tableName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = pulumi.Input.mapOptionalInputValue<TableTtlKeyspaces,
          Map<String, dynamic>>(ttlValue, (value) => value.toMap());
    }
    return map;
  }

  factory TableKeyspacesArgs.fromMap(Map<String, dynamic> map) {
    return TableKeyspacesArgs(
      capacitySpecification:
          pulumi.Input.asOptionalInput<TableCapacitySpecification>(
              map['capacitySpecification']),
      clientSideTimestamps:
          pulumi.Input.asOptionalInput<TableClientSideTimestamps>(
              map['clientSideTimestamps']),
      comment: pulumi.Input.asOptionalInput<TableComment>(map['comment']),
      defaultTimeToLive:
          pulumi.Input.asOptionalInput<int>(map['defaultTimeToLive']),
      encryptionSpecification:
          pulumi.Input.asOptionalInput<TableEncryptionSpecification>(
              map['encryptionSpecification']),
      keyspaceName: pulumi.Input.asInput<String>(map['keyspaceName']),
      pointInTimeRecovery:
          pulumi.Input.asOptionalInput<TablePointInTimeRecoveryKeyspaces>(
              map['pointInTimeRecovery']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      schemaDefinition:
          pulumi.Input.asInput<TableSchemaDefinition>(map['schemaDefinition']),
      tableName: pulumi.Input.asInput<String>(map['tableName']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      ttl: pulumi.Input.asOptionalInput<TableTtlKeyspaces>(map['ttl']),
    );
  }
}
