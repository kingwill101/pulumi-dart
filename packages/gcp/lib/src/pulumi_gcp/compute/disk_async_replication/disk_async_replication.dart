import 'package:pulumi/pulumi.dart';
import '../disk_async_replication_secondary_disk/disk_async_replication_secondary_disk.dart';
import 'disk_async_replication_args.dart';

/// Starts and stops asynchronous persistent disk replication. For more information
/// see [the official documentation](https://cloud.google.com/compute/docs/disks/async-pd/about)
/// and the [API](https://cloud.google.com/compute/docs/reference/rest/v1/disks).
class DiskAsyncReplication extends CustomResource {
  /// The primary disk (source of replication).
  late final Output<String> primaryDisk;

  /// The secondary disk (target of replication). You can specify only one value. Structure is documented below.
  ///
  /// The `secondary_disk` block includes:
  late final Output<DiskAsyncReplicationSecondaryDisk> secondaryDisk;

  DiskAsyncReplication(
    String name, {
    DiskAsyncReplicationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/diskAsyncReplication:DiskAsyncReplication',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.primaryDisk = registerOutput<String>('primaryDisk');
    this.secondaryDisk =
        registerOutput<DiskAsyncReplicationSecondaryDisk>('secondaryDisk');
  }
}
