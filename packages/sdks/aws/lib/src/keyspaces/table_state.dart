// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_capacity_specification.dart';
import 'table_client_side_timestamps.dart';
import 'table_comment.dart';
import 'table_encryption_specification.dart';
import 'table_point_in_time_recovery.dart';
import 'table_schema_definition.dart';
import 'table_ttl.dart';

/// Input properties used for looking up and filtering Table resources.
class TableState {
  /// ARN of the table.
  final pulumi.Input<String?>? arn;
  /// Read/write throughput capacity mode for the table. See `capacitySpecification` below.
  final pulumi.Input<TableCapacitySpecification?>? capacitySpecification;
  /// Enables client-side timestamps for the table. By default, the setting is disabled. See `clientSideTimestamps` below.
  final pulumi.Input<TableClientSideTimestamps?>? clientSideTimestamps;
  /// Description of the table. See `comment` below.
  final pulumi.Input<TableComment?>? comment;
  /// Default Time to Live setting in seconds for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl).
  final pulumi.Input<int?>? defaultTimeToLive;
  /// Encryption key management for encryption at rest for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html). See `encryptionSpecification` below.
  final pulumi.Input<TableEncryptionSpecification?>? encryptionSpecification;
  /// Name of the keyspace that the table is going to be created in.
  final pulumi.Input<String?>? keyspaceName;
  /// Enables or disables point-in-time recovery for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html). See `pointInTimeRecovery` below.
  final pulumi.Input<TablePointInTimeRecovery?>? pointInTimeRecovery;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Schema of the table. See `schemaDefinition` below.
  final pulumi.Input<TableSchemaDefinition?>? schemaDefinition;
  /// Name of the table.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? tableName;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Enables Time to Live custom settings for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html). See `ttl` below.
  final pulumi.Input<TableTtl?>? ttl;

  /// Creates a new [TableState].
  /// [arn] ARN of the table.
  /// [capacitySpecification] Read/write throughput capacity mode for the table. See `capacitySpecification` below.
  /// [clientSideTimestamps] Enables client-side timestamps for the table. By default, the setting is disabled. See `clientSideTimestamps` below.
  /// [comment] Description of the table. See `comment` below.
  /// [defaultTimeToLive] Default Time to Live setting in seconds for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl).
  /// [encryptionSpecification] Encryption key management for encryption at rest for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html). See `encryptionSpecification` below.
  /// [keyspaceName] Name of the keyspace that the table is going to be created in.
  /// [pointInTimeRecovery] Enables or disables point-in-time recovery for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html). See `pointInTimeRecovery` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schemaDefinition] Schema of the table. See `schemaDefinition` below.
  /// [tableName] Name of the table.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [ttl] Enables Time to Live custom settings for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html). See `ttl` below.
  const TableState({
    this.arn,
    this.capacitySpecification,
    this.clientSideTimestamps,
    this.comment,
    this.defaultTimeToLive,
    this.encryptionSpecification,
    this.keyspaceName,
    this.pointInTimeRecovery,
    this.region,
    this.schemaDefinition,
    this.tableName,
    this.tags,
    this.tagsAll,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'capacitySpecification': ?pulumi.Input.mapOptionalInputValue<TableCapacitySpecification, Map<String, dynamic>>(capacitySpecification, (value) => value.toMap()),
      'clientSideTimestamps': ?pulumi.Input.mapOptionalInputValue<TableClientSideTimestamps, Map<String, dynamic>>(clientSideTimestamps, (value) => value.toMap()),
      'comment': ?pulumi.Input.mapOptionalInputValue<TableComment, Map<String, dynamic>>(comment, (value) => value.toMap()),
      'defaultTimeToLive': ?defaultTimeToLive,
      'encryptionSpecification': ?pulumi.Input.mapOptionalInputValue<TableEncryptionSpecification, Map<String, dynamic>>(encryptionSpecification, (value) => value.toMap()),
      'keyspaceName': ?keyspaceName,
      'pointInTimeRecovery': ?pulumi.Input.mapOptionalInputValue<TablePointInTimeRecovery, Map<String, dynamic>>(pointInTimeRecovery, (value) => value.toMap()),
      'region': ?region,
      'schemaDefinition': ?pulumi.Input.mapOptionalInputValue<TableSchemaDefinition, Map<String, dynamic>>(schemaDefinition, (value) => value.toMap()),
      'tableName': ?tableName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'ttl': ?pulumi.Input.mapOptionalInputValue<TableTtl, Map<String, dynamic>>(ttl, (value) => value.toMap()),
    };
  }

  factory TableState.fromMap(Map<String, dynamic> map) {
    return TableState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacitySpecification: (() { final guardedValue = map['capacitySpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableCapacitySpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientSideTimestamps: (() { final guardedValue = map['clientSideTimestamps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableClientSideTimestamps.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableComment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultTimeToLive: (() { final guardedValue = map['defaultTimeToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      encryptionSpecification: (() { final guardedValue = map['encryptionSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableEncryptionSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyspaceName: (() { final guardedValue = map['keyspaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pointInTimeRecovery: (() { final guardedValue = map['pointInTimeRecovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TablePointInTimeRecovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaDefinition: (() { final guardedValue = map['schemaDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableSchemaDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableTtl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
