// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dynamodb_table_replica_table_replica_args_doc}
/// The set of arguments for TableReplica.
/// {@endtemplate}
/// {@macro pulumi_dynamodb_table_replica_table_replica_args_doc}
class TableReplicaArgs {
  /// Whether deletion protection is enabled (true) or disabled (false) on the table replica.
  final pulumi.Input<bool?>? deletionProtectionEnabled;
  /// ARN of the _main_ or global table which this resource will replicate.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> globalTableArn;
  /// ARN of the CMK that should be used for the AWS KMS encryption. This argument should only be used if the key is different from the default KMS-managed DynamoDB key, `alias/aws/dynamodb`. **Note:** This attribute will _not_ be populated with the ARN of _default_ keys.
  final pulumi.Input<String?>? kmsKeyArn;
  /// Whether to enable Point In Time Recovery for the table replica. Default is `false`.
  final pulumi.Input<bool?>? pointInTimeRecovery;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Storage class of the table replica. Valid values are `STANDARD` and `STANDARD_INFREQUENT_ACCESS`. If not used, the table replica will use the same class as the global table.
  final pulumi.Input<String?>? tableClassOverride;
  /// Map of tags to populate on the created table. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [TableReplicaArgs].
  /// [deletionProtectionEnabled] Whether deletion protection is enabled (true) or disabled (false) on the table replica.
  /// [globalTableArn] ARN of the _main_ or global table which this resource will replicate.
  /// [kmsKeyArn] ARN of the CMK that should be used for the AWS KMS encryption. This argument should only be used if the key is different from the default KMS-managed DynamoDB key, `alias/aws/dynamodb`. **Note:** This attribute will _not_ be populated with the ARN of _default_ keys.
  /// [pointInTimeRecovery] Whether to enable Point In Time Recovery for the table replica. Default is `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableClassOverride] Storage class of the table replica. Valid values are `STANDARD` and `STANDARD_INFREQUENT_ACCESS`. If not used, the table replica will use the same class as the global table.
  /// [tags] Map of tags to populate on the created table. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const TableReplicaArgs({
    this.deletionProtectionEnabled,
    required this.globalTableArn,
    this.kmsKeyArn,
    this.pointInTimeRecovery,
    this.region,
    this.tableClassOverride,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'globalTableArn': globalTableArn,
      'kmsKeyArn': ?kmsKeyArn,
      'pointInTimeRecovery': ?pointInTimeRecovery,
      'region': ?region,
      'tableClassOverride': ?tableClassOverride,
      'tags': ?tags,
    };
  }

  factory TableReplicaArgs.fromMap(Map<String, dynamic> map) {
    return TableReplicaArgs(
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      globalTableArn: pulumi.Input.fromValue(map['globalTableArn'] as String),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pointInTimeRecovery: (() { final guardedValue = map['pointInTimeRecovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableClassOverride: (() { final guardedValue = map['tableClassOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
