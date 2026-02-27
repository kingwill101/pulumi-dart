import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_redshiftserverless_args.dart';

/// Creates a new Amazon Redshift Serverless Snapshot.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Serverless Snapshots using the `snapshot_name`. For example:
///
/// ```sh
/// $ pulumi import aws:redshiftserverless/snapshot:Snapshot example example
/// ```
class SnapshotRedshiftserverless extends pulumi.CustomResource {
  /// All of the Amazon Web Services accounts that have access to restore a snapshot to a provisioned cluster.
  late final pulumi.Output<List<String>> accountsWithProvisionedRestoreAccesses;

  /// All of the Amazon Web Services accounts that have access to restore a snapshot to a namespace.
  late final pulumi.Output<List<String>> accountsWithRestoreAccesses;

  /// The username of the database within a snapshot.
  late final pulumi.Output<String> adminUsername;

  /// The Amazon Resource Name (ARN) of the snapshot.
  late final pulumi.Output<String> arn;

  /// The unique identifier of the KMS key used to encrypt the snapshot.
  late final pulumi.Output<String> kmsKeyId;

  /// The Amazon Resource Name (ARN) of the namespace the snapshot was created from.
  late final pulumi.Output<String> namespaceArn;

  /// The namespace to create a snapshot for.
  late final pulumi.Output<String> namespaceName;

  /// The owner Amazon Web Services; account of the snapshot.
  late final pulumi.Output<String> ownerAccount;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// How long to retain the created snapshot. Default value is `-1`.
  late final pulumi.Output<int?> retentionPeriod;

  /// The name of the snapshot.
  late final pulumi.Output<String> snapshotName;

  SnapshotRedshiftserverless(
    String name, {
    SnapshotRedshiftserverlessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountsWithProvisionedRestoreAccesses =
        registerOutput<List<String>>('accountsWithProvisionedRestoreAccesses');
    this.accountsWithRestoreAccesses =
        registerOutput<List<String>>('accountsWithRestoreAccesses');
    this.adminUsername = registerOutput<String>('adminUsername');
    this.arn = registerOutput<String>('arn');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.namespaceArn = registerOutput<String>('namespaceArn');
    this.namespaceName = registerOutput<String>('namespaceName');
    this.ownerAccount = registerOutput<String>('ownerAccount');
    this.region = registerOutput<String>('region');
    this.retentionPeriod = registerOutput<int?>('retentionPeriod');
    this.snapshotName = registerOutput<String>('snapshotName');
  }
}
