// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_capacity_specification.dart';
import 'table_client_side_timestamps.dart';
import 'table_comment.dart';
import 'table_encryption_specification.dart';
import 'table_point_in_time_recovery.dart';
import 'table_schema_definition.dart';
import 'table_ttl.dart';

/// {@template pulumi_keyspaces_table_table_args_doc}
/// The set of arguments for Table.
/// {@endtemplate}
/// {@macro pulumi_keyspaces_table_table_args_doc}
class TableArgs {
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
  final pulumi.Input<TablePointInTimeRecovery>? pointInTimeRecovery;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Describes the schema of the table.
  final pulumi.Input<TableSchemaDefinition> schemaDefinition;
  /// The name of the table.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> tableName;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Enables Time to Live custom settings for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html).
  final pulumi.Input<TableTtl>? ttl;

  /// Creates a new [TableArgs].
  /// [capacitySpecification] Specifies the read/write throughput capacity mode for the table.
  /// [clientSideTimestamps] Enables client-side timestamps for the table. By default, the setting is disabled.
  /// [comment] A description of the table.
  /// [defaultTimeToLive] The default Time to Live setting in seconds for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl).
  /// [encryptionSpecification] Specifies how the encryption key for encryption at rest is managed for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html).
  /// [keyspaceName] The name of the keyspace that the table is going to be created in.
  /// [pointInTimeRecovery] Specifies if point-in-time recovery is enabled or disabled for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schemaDefinition] Describes the schema of the table.
  /// [tableName] The name of the table.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [ttl] Enables Time to Live custom settings for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html).
  const TableArgs({
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
    return <String, dynamic>{
      'capacitySpecification': ?pulumi.Input.mapOptionalInputValue<TableCapacitySpecification, Map<String, dynamic>>(capacitySpecification, (value) => value.toMap()),
      'clientSideTimestamps': ?pulumi.Input.mapOptionalInputValue<TableClientSideTimestamps, Map<String, dynamic>>(clientSideTimestamps, (value) => value.toMap()),
      'comment': ?pulumi.Input.mapOptionalInputValue<TableComment, Map<String, dynamic>>(comment, (value) => value.toMap()),
      'defaultTimeToLive': ?defaultTimeToLive,
      'encryptionSpecification': ?pulumi.Input.mapOptionalInputValue<TableEncryptionSpecification, Map<String, dynamic>>(encryptionSpecification, (value) => value.toMap()),
      'keyspaceName': keyspaceName,
      'pointInTimeRecovery': ?pulumi.Input.mapOptionalInputValue<TablePointInTimeRecovery, Map<String, dynamic>>(pointInTimeRecovery, (value) => value.toMap()),
      'region': ?region,
      'schemaDefinition': pulumi.Input.mapInputValue<TableSchemaDefinition, Map<String, dynamic>>(schemaDefinition, (value) => value.toMap()),
      'tableName': tableName,
      'tags': ?tags,
      'ttl': ?pulumi.Input.mapOptionalInputValue<TableTtl, Map<String, dynamic>>(ttl, (value) => value.toMap()),
    };
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      capacitySpecification: (() { final guardedValue = map['capacitySpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableCapacitySpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientSideTimestamps: (() { final guardedValue = map['clientSideTimestamps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableClientSideTimestamps.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableComment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultTimeToLive: (() { final guardedValue = map['defaultTimeToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      encryptionSpecification: (() { final guardedValue = map['encryptionSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableEncryptionSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyspaceName: pulumi.Input.fromValue(map['keyspaceName'] as String),
      pointInTimeRecovery: (() { final guardedValue = map['pointInTimeRecovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TablePointInTimeRecovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaDefinition: pulumi.Input.fromValue(TableSchemaDefinition.fromMap((map['schemaDefinition']! as Map).cast<String, dynamic>())),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableTtl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
