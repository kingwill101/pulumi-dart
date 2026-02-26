// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for InstanceAutomatedBackupsReplication.
class InstanceAutomatedBackupsReplicationArgs {
  /// The AWS KMS key identifier for encryption of the replicated automated backups. The KMS key ID is the Amazon Resource Name (ARN) for the KMS encryption key in the destination AWS Region, for example, `arn:aws:kms:us-east-1:123456789012:key/AKIAIOSFODNN7EXAMPLE`.
  final Input<String>? kmsKeyId;

  /// A URL that contains a [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html) signed request for the [`StartDBInstanceAutomatedBackupsReplication`](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_StartDBInstanceAutomatedBackupsReplication.html) action to be called in the AWS Region of the source DB instance.
  final Input<String>? preSignedUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The retention period for the replicated automated backups, defaults to <span pulumi-lang-nodejs="`7`" pulumi-lang-dotnet="`7`" pulumi-lang-go="`7`" pulumi-lang-python="`7`" pulumi-lang-yaml="`7`" pulumi-lang-java="`7`">`7`</span>.
  final Input<int>? retentionPeriod;

  /// The Amazon Resource Name (ARN) of the source DB instance for the replicated automated backups, for example, `arn:aws:rds:us-west-2:123456789012:db:mydatabase`.
  final Input<String> sourceDbInstanceArn;

  InstanceAutomatedBackupsReplicationArgs({
    this.kmsKeyId,
    this.preSignedUrl,
    this.region,
    this.retentionPeriod,
    required this.sourceDbInstanceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final preSignedUrlValue = preSignedUrl;
    if (preSignedUrlValue != null) {
      map['preSignedUrl'] = preSignedUrlValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retentionPeriodValue = retentionPeriod;
    if (retentionPeriodValue != null) {
      map['retentionPeriod'] = retentionPeriodValue;
    }
    map['sourceDbInstanceArn'] = sourceDbInstanceArn;
    return map;
  }

  factory InstanceAutomatedBackupsReplicationArgs.fromMap(
      Map<String, dynamic> map) {
    return InstanceAutomatedBackupsReplicationArgs(
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      preSignedUrl: Input.asOptionalInput<String>(map['preSignedUrl']),
      region: Input.asOptionalInput<String>(map['region']),
      retentionPeriod: Input.asOptionalInput<int>(map['retentionPeriod']),
      sourceDbInstanceArn: Input.asInput<String>(map['sourceDbInstanceArn']),
    );
  }
}
