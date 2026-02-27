import 'package:pulumi/pulumi.dart';
import 'snapshot_copy_grant_args.dart';

/// Creates a snapshot copy grant that allows AWS Redshift to encrypt copied snapshots with a customer master key from AWS KMS in a destination region.
///
/// Note that the grant must exist in the destination region, and not in the region of the cluster.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Snapshot Copy Grants by name. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/snapshotCopyGrant:SnapshotCopyGrant test my-grant
/// ```
class SnapshotCopyGrant extends CustomResource {
  /// Amazon Resource Name (ARN) of snapshot copy grant
  late final Output<String> arn;

  /// The unique identifier for the customer master key (CMK) that the grant applies to. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN. If not specified, the default key is used.
  late final Output<String> kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A friendly name for identifying the grant.
  late final Output<String> snapshotCopyGrantName;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  SnapshotCopyGrant(
    String name, {
    SnapshotCopyGrantArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/snapshotCopyGrant:SnapshotCopyGrant',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.region = registerOutput<String>('region');
    this.snapshotCopyGrantName =
        registerOutput<String>('snapshotCopyGrantName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
