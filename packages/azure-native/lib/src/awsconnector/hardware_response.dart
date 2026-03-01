// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_response.dart';

/// Definition of Hardware
class HardwareResponse {
  /// CPU count of the Instance.
  final int? cpuCount;
  /// Disks attached to the Instance.
  final List<DiskResponse>? disks;
  /// RAM Size of the Instance.
  final int? ramSizeInGb;

  /// Creates a new [HardwareResponse].
  /// [cpuCount] CPU count of the Instance.
  /// [disks] Disks attached to the Instance.
  /// [ramSizeInGb] RAM Size of the Instance.
  HardwareResponse({
    this.cpuCount,
    this.disks,
    this.ramSizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': ?cpuCount,
      'disks': ?disks == null ? null : pulumi.Input.encodeList<DiskResponse, Map<String, dynamic>>(disks!, (value) => value.toMap()),
      'ramSizeInGb': ?ramSizeInGb,
    };
  }

  factory HardwareResponse.fromMap(Map<String, dynamic> map) {
    return HardwareResponse(
      cpuCount: map['cpuCount'] == null ? null : map['cpuCount'] as int,
      disks: map['disks'] == null ? null : pulumi.Input.decodeList<DiskResponse>(map['disks'], (value) => DiskResponse.fromMap((value as Map).cast<String, dynamic>())),
      ramSizeInGb: map['ramSizeInGb'] == null ? null : map['ramSizeInGb'] as int,
    );
  }
}

