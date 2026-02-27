import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_create_volume_permission_args.dart';

/// Adds permission to create volumes off of a given EBS Snapshot.
class SnapshotCreateVolumePermission extends pulumi.CustomResource {
  /// An AWS Account ID to add create volume permissions. The AWS Account cannot be the snapshot's owner
  late final pulumi.Output<String> accountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A snapshot ID
  late final pulumi.Output<String> snapshotId;

  SnapshotCreateVolumePermission(
    String name, {
    SnapshotCreateVolumePermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/snapshotCreateVolumePermission:SnapshotCreateVolumePermission',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.region = registerOutput<String>('region');
    this.snapshotId = registerOutput<String>('snapshotId');
  }
}
