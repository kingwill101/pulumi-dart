// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_restore_point_instance_view_response.dart';
import 'instance_view_status_response.dart';

/// The instance view of a restore point.
class RestorePointInstanceViewResponse {
  /// The disk restore points information.
  final List<DiskRestorePointInstanceViewResponse>? diskRestorePoints;
  /// The resource status information.
  final List<InstanceViewStatusResponse>? statuses;

  /// Creates a new [RestorePointInstanceViewResponse].
  /// [diskRestorePoints] The disk restore points information.
  /// [statuses] The resource status information.
  RestorePointInstanceViewResponse({
    this.diskRestorePoints,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskRestorePoints': ?diskRestorePoints == null ? null : pulumi.Input.encodeList<DiskRestorePointInstanceViewResponse, Map<String, dynamic>>(diskRestorePoints!, (value) => value.toMap()),
      'statuses': ?statuses == null ? null : pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(statuses!, (value) => value.toMap()),
    };
  }

  factory RestorePointInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return RestorePointInstanceViewResponse(
      diskRestorePoints: map['diskRestorePoints'] == null ? null : pulumi.Input.decodeList<DiskRestorePointInstanceViewResponse>(map['diskRestorePoints'], (value) => DiskRestorePointInstanceViewResponse.fromMap((value as Map).cast<String, dynamic>())),
      statuses: map['statuses'] == null ? null : pulumi.Input.decodeList<InstanceViewStatusResponse>(map['statuses'], (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

