// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceAutomatedBackupsReplication resources.
class InstanceAutomatedBackupsReplicationState {
  /// The AWS KMS key identifier for encryption of the replicated automated backups. The KMS key ID is the Amazon Resource Name (ARN) for the KMS encryption key in the destination AWS Region, for example, `arn:aws:kms:us-east-1:123456789012:key/AKIAIOSFODNN7EXAMPLE`.
  final pulumi.Input<String>? kmsKeyId;
  /// A URL that contains a [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html) signed request for the [`StartDBInstanceAutomatedBackupsReplication`](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_StartDBInstanceAutomatedBackupsReplication.html) action to be called in the AWS Region of the source DB instance.
  final pulumi.Input<String>? preSignedUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The retention period for the replicated automated backups, defaults to `7`.
  final pulumi.Input<int>? retentionPeriod;
  /// The Amazon Resource Name (ARN) of the source DB instance for the replicated automated backups, for example, `arn:aws:rds:us-west-2:123456789012:db:mydatabase`.
  final pulumi.Input<String>? sourceDbInstanceArn;

  /// Creates a new [InstanceAutomatedBackupsReplicationState].
  /// [kmsKeyId] The AWS KMS key identifier for encryption of the replicated automated backups. The KMS key ID is the Amazon Resource Name (ARN) for the KMS encryption key in the destination AWS Region, for example, `arn:aws:kms:us-east-1:123456789012:key/AKIAIOSFODNN7EXAMPLE`.
  /// [preSignedUrl] A URL that contains a [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html) signed request for the [`StartDBInstanceAutomatedBackupsReplication`](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_StartDBInstanceAutomatedBackupsReplication.html) action to be called in the AWS Region of the source DB instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retentionPeriod] The retention period for the replicated automated backups, defaults to `7`.
  /// [sourceDbInstanceArn] The Amazon Resource Name (ARN) of the source DB instance for the replicated automated backups, for example, `arn:aws:rds:us-west-2:123456789012:db:mydatabase`.
  InstanceAutomatedBackupsReplicationState({
    this.kmsKeyId,
    this.preSignedUrl,
    this.region,
    this.retentionPeriod,
    this.sourceDbInstanceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyId': ?kmsKeyId,
      'preSignedUrl': ?preSignedUrl,
      'region': ?region,
      'retentionPeriod': ?retentionPeriod,
      'sourceDbInstanceArn': ?sourceDbInstanceArn,
    };
  }

  factory InstanceAutomatedBackupsReplicationState.fromMap(Map<String, dynamic> map) {
    return InstanceAutomatedBackupsReplicationState(
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      preSignedUrl: map['preSignedUrl'] == null ? null : (map['preSignedUrl'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      retentionPeriod: map['retentionPeriod'] == null ? null : (map['retentionPeriod'] as int).input(),
      sourceDbInstanceArn: map['sourceDbInstanceArn'] == null ? null : (map['sourceDbInstanceArn'] as String).input(),
    );
  }
}

