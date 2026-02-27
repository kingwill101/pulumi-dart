import 'package:pulumi/pulumi.dart';
import 'instance_automated_backups_replication_args.dart';

/// Manage cross-region replication of automated backups to a different AWS Region. Documentation for cross-region automated backup replication can be found at:
///
/// * [Replicating automated backups to another AWS Region](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReplicateBackups.html)
///
/// > **Note:** This resource has to be created in the destination region.
///
/// ## Example Usage
///
///
///
/// ## Encrypting the automated backup with KMS
///
///
///
/// ## Example including a RDS DB instance
///
///
///
/// ## Import
///
/// Using `pulumi import`, import RDS instance automated backups replication using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/instanceAutomatedBackupsReplication:InstanceAutomatedBackupsReplication default arn:aws:rds:us-east-1:123456789012:auto-backup:ab-faaa2mgdj1vmp4xflr7yhsrmtbtob7ltrzzz2my
/// ```
class InstanceAutomatedBackupsReplication extends CustomResource {
  /// The AWS KMS key identifier for encryption of the replicated automated backups. The KMS key ID is the Amazon Resource Name (ARN) for the KMS encryption key in the destination AWS Region, for example, `arn:aws:kms:us-east-1:123456789012:key/AKIAIOSFODNN7EXAMPLE`.
  late final Output<String> kmsKeyId;

  /// A URL that contains a [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html) signed request for the [`StartDBInstanceAutomatedBackupsReplication`](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_StartDBInstanceAutomatedBackupsReplication.html) action to be called in the AWS Region of the source DB instance.
  late final Output<String?> preSignedUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The retention period for the replicated automated backups, defaults to `7`.
  late final Output<int?> retentionPeriod;

  /// The Amazon Resource Name (ARN) of the source DB instance for the replicated automated backups, for example, `arn:aws:rds:us-west-2:123456789012:db:mydatabase`.
  late final Output<String> sourceDbInstanceArn;

  InstanceAutomatedBackupsReplication(
    String name, {
    InstanceAutomatedBackupsReplicationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/instanceAutomatedBackupsReplication:InstanceAutomatedBackupsReplication',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.preSignedUrl = registerOutput<String?>('preSignedUrl');
    this.region = registerOutput<String>('region');
    this.retentionPeriod = registerOutput<int?>('retentionPeriod');
    this.sourceDbInstanceArn = registerOutput<String>('sourceDbInstanceArn');
  }
}
