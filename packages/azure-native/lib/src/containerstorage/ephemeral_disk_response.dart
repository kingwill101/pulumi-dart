// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_response.dart';

/// Ephemeral Disk Pool Properties
class EphemeralDiskResponse {
  /// Only required if individual disk selection is desired. Path to disk, e.g. <nodename>:/dev/sda or WWN. Supports specifying multiple disks (same syntax as tags).
  final List<DiskResponse>? disks;
  /// The number of data copies. Default 3.
  final double? replicas;

  /// Creates a new [EphemeralDiskResponse].
  /// [disks] Only required if individual disk selection is desired. Path to disk, e.g. <nodename>:/dev/sda or WWN. Supports specifying multiple disks (same syntax as tags).
  /// [replicas] The number of data copies. Default 3.
  EphemeralDiskResponse({
    this.disks,
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': ?disks == null ? null : pulumi.Input.encodeList<DiskResponse, Map<String, dynamic>>(disks!, (value) => value.toMap()),
      'replicas': ?replicas,
    };
  }

  factory EphemeralDiskResponse.fromMap(Map<String, dynamic> map) {
    return EphemeralDiskResponse(
      disks: map['disks'] == null ? null : pulumi.Input.decodeList<DiskResponse>(map['disks'], (value) => DiskResponse.fromMap((value as Map).cast<String, dynamic>())),
      replicas: map['replicas'] == null ? null : map['replicas'] as double,
    );
  }
}

