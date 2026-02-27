// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../disk_async_replication_secondary_disk/disk_async_replication_secondary_disk.dart';

/// The set of arguments for DiskAsyncReplication.
class DiskAsyncReplicationArgs {
  /// The primary disk (source of replication).
  final pulumi.Input<String> primaryDisk;

  /// The secondary disk (target of replication). You can specify only one value. Structure is documented below.
  ///
  /// The `secondary_disk` block includes:
  final pulumi.Input<DiskAsyncReplicationSecondaryDisk> secondaryDisk;

  DiskAsyncReplicationArgs({
    required this.primaryDisk,
    required this.secondaryDisk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['primaryDisk'] = primaryDisk;
    map['secondaryDisk'] = pulumi.Input.mapInputValue<
        DiskAsyncReplicationSecondaryDisk,
        Map<String, dynamic>>(secondaryDisk, (value) => value.toMap());
    return map;
  }

  factory DiskAsyncReplicationArgs.fromMap(Map<String, dynamic> map) {
    return DiskAsyncReplicationArgs(
      primaryDisk: pulumi.Input.asInput<String>(map['primaryDisk']),
      secondaryDisk: pulumi.Input.asInput<DiskAsyncReplicationSecondaryDisk>(
          map['secondaryDisk']),
    );
  }
}
