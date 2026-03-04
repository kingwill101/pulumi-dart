// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// StorageProfile of edge machine.
class StorageProfileResponse {
  /// Number of storage disks in the device with $CanPool as true.
  final pulumi.Input<double> poolableDisksCount;

  /// Creates a new [StorageProfileResponse].
  /// [poolableDisksCount] Number of storage disks in the device with $CanPool as true.
  StorageProfileResponse({required this.poolableDisksCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'poolableDisksCount': poolableDisksCount};
  }

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      poolableDisksCount: pulumi.Input.fromValue(
        map['poolableDisksCount'] as double,
      ),
    );
  }
}
