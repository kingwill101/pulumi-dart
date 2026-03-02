// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A data disks attached to a virtual machine.
class ComputeDataDiskResponse {
  /// Gets data disk size in GiB.
  final pulumi.Input<int>? diskSizeGiB;
  /// When backed by a blob, the URI of underlying blob.
  final pulumi.Input<String>? diskUri;
  /// When backed by managed disk, this is the ID of the compute disk resource.
  final pulumi.Input<String>? managedDiskId;
  /// Gets data disk name.
  final pulumi.Input<String>? name;

  /// Creates a new [ComputeDataDiskResponse].
  /// [diskSizeGiB] Gets data disk size in GiB.
  /// [diskUri] When backed by a blob, the URI of underlying blob.
  /// [managedDiskId] When backed by managed disk, this is the ID of the compute disk resource.
  /// [name] Gets data disk name.
  ComputeDataDiskResponse({
    this.diskSizeGiB,
    this.diskUri,
    this.managedDiskId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGiB': ?diskSizeGiB,
      'diskUri': ?diskUri,
      'managedDiskId': ?managedDiskId,
      'name': ?name,
    };
  }

  factory ComputeDataDiskResponse.fromMap(Map<String, dynamic> map) {
    return ComputeDataDiskResponse(
      diskSizeGiB: map['diskSizeGiB'] == null ? null : (map['diskSizeGiB'] as int).input(),
      diskUri: map['diskUri'] == null ? null : (map['diskUri'] as String).input(),
      managedDiskId: map['managedDiskId'] == null ? null : (map['managedDiskId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

