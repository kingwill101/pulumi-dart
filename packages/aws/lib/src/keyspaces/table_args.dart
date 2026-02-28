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

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [ttl] Enables Time to Live custom settings for the table. More information can be found in the [Developer Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html).
  TableArgs({
    TableCapacitySpecification? capacitySpecification,
    TableClientSideTimestamps? clientSideTimestamps,
    TableComment? comment,
    int? defaultTimeToLive,
    TableEncryptionSpecification? encryptionSpecification,
    required String keyspaceName,
    TablePointInTimeRecovery? pointInTimeRecovery,
    String? region,
    required TableSchemaDefinition schemaDefinition,
    required String tableName,
    Map<String, String>? tags,
    TableTtl? ttl,
  })  : capacitySpecification =
            pulumi.Input.asOptionalInput<TableCapacitySpecification>(
                capacitySpecification),
        clientSideTimestamps =
            pulumi.Input.asOptionalInput<TableClientSideTimestamps>(
                clientSideTimestamps),
        comment = pulumi.Input.asOptionalInput<TableComment>(comment),
        defaultTimeToLive =
            pulumi.Input.asOptionalInput<int>(defaultTimeToLive),
        encryptionSpecification =
            pulumi.Input.asOptionalInput<TableEncryptionSpecification>(
                encryptionSpecification),
        keyspaceName = pulumi.Input.asInput<String>(keyspaceName),
        pointInTimeRecovery =
            pulumi.Input.asOptionalInput<TablePointInTimeRecovery>(
                pointInTimeRecovery),
        region = pulumi.Input.asOptionalInput<String>(region),
        schemaDefinition =
            pulumi.Input.asInput<TableSchemaDefinition>(schemaDefinition),
        tableName = pulumi.Input.asInput<String>(tableName),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        ttl = pulumi.Input.asOptionalInput<TableTtl>(ttl);

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
              TablePointInTimeRecovery, Map<String, dynamic>>(
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
      map['ttl'] =
          pulumi.Input.mapOptionalInputValue<TableTtl, Map<String, dynamic>>(
              ttlValue, (value) => value.toMap());
    }
    return map;
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      capacitySpecification: map['capacitySpecification'] == null
          ? null
          : TableCapacitySpecification.fromMap(
              (map['capacitySpecification'] as Map).cast<String, dynamic>()),
      clientSideTimestamps: map['clientSideTimestamps'] == null
          ? null
          : TableClientSideTimestamps.fromMap(
              (map['clientSideTimestamps'] as Map).cast<String, dynamic>()),
      comment: map['comment'] == null
          ? null
          : TableComment.fromMap(
              (map['comment'] as Map).cast<String, dynamic>()),
      defaultTimeToLive: map['defaultTimeToLive'] == null
          ? null
          : map['defaultTimeToLive'] as int,
      encryptionSpecification: map['encryptionSpecification'] == null
          ? null
          : TableEncryptionSpecification.fromMap(
              (map['encryptionSpecification'] as Map).cast<String, dynamic>()),
      keyspaceName: map['keyspaceName'] as String,
      pointInTimeRecovery: map['pointInTimeRecovery'] == null
          ? null
          : TablePointInTimeRecovery.fromMap(
              (map['pointInTimeRecovery'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      schemaDefinition: TableSchemaDefinition.fromMap(
          (map['schemaDefinition'] as Map).cast<String, dynamic>()),
      tableName: map['tableName'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      ttl: map['ttl'] == null
          ? null
          : TableTtl.fromMap((map['ttl'] as Map).cast<String, dynamic>()),
    );
  }
}
