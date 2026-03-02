// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dynamodb_table_replica_table_replica_args_doc}
/// The set of arguments for TableReplica.
/// {@endtemplate}
/// {@macro pulumi_dynamodb_table_replica_table_replica_args_doc}
class TableReplicaArgs {
  /// Whether deletion protection is enabled (true) or disabled (false) on the table replica.
  final pulumi.Input<bool>? deletionProtectionEnabled;
  /// ARN of the _main_ or global table which this resource will replicate.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> globalTableArn;
  /// ARN of the CMK that should be used for the AWS KMS encryption. This argument should only be used if the key is different from the default KMS-managed DynamoDB key, `alias/aws/dynamodb`. **Note:** This attribute will _not_ be populated with the ARN of _default_ keys.
  final pulumi.Input<String>? kmsKeyArn;
  /// Whether to enable Point In Time Recovery for the table replica. Default is `false`.
  final pulumi.Input<bool>? pointInTimeRecovery;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Storage class of the table replica. Valid values are `STANDARD` and `STANDARD_INFREQUENT_ACCESS`. If not used, the table replica will use the same class as the global table.
  final pulumi.Input<String>? tableClassOverride;
  /// Map of tags to populate on the created table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TableReplicaArgs].
  /// [deletionProtectionEnabled] Whether deletion protection is enabled (true) or disabled (false) on the table replica.
  /// [globalTableArn] ARN of the _main_ or global table which this resource will replicate.
  /// [kmsKeyArn] ARN of the CMK that should be used for the AWS KMS encryption. This argument should only be used if the key is different from the default KMS-managed DynamoDB key, `alias/aws/dynamodb`. **Note:** This attribute will _not_ be populated with the ARN of _default_ keys.
  /// [pointInTimeRecovery] Whether to enable Point In Time Recovery for the table replica. Default is `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tableClassOverride] Storage class of the table replica. Valid values are `STANDARD` and `STANDARD_INFREQUENT_ACCESS`. If not used, the table replica will use the same class as the global table.
  /// [tags] Map of tags to populate on the created table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  TableReplicaArgs({
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
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null ? null : ((map['deletionProtectionEnabled'] as bool).input()).input(),
      globalTableArn: (map['globalTableArn'] as String).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : ((map['kmsKeyArn'] as String).input()).input(),
      pointInTimeRecovery: map['pointInTimeRecovery'] == null ? null : ((map['pointInTimeRecovery'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tableClassOverride: map['tableClassOverride'] == null ? null : ((map['tableClassOverride'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

