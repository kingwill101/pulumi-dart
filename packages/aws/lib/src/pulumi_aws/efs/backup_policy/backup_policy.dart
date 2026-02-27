import 'package:pulumi/pulumi.dart' as pulumi;
import '../backup_policy_backup_policy/backup_policy_backup_policy.dart';
import 'backup_policy_args.dart';

/// Provides an Elastic File System (EFS) Backup Policy resource.
/// Backup policies turn automatic backups on or off for an existing file system.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the EFS backup policies using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:efs/backupPolicy:BackupPolicy example fs-6fa144c6
/// ```
class BackupPolicy extends pulumi.CustomResource {
  /// A backup_policy object (documented below).
  late final pulumi.Output<BackupPolicyBackupPolicy> backupPolicy;

  /// The ID of the EFS file system.
  late final pulumi.Output<String> fileSystemId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  BackupPolicy(
    String name, {
    BackupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:efs/backupPolicy:BackupPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupPolicy =
        registerOutput<BackupPolicyBackupPolicy>('backupPolicy');
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.region = registerOutput<String>('region');
  }
}
