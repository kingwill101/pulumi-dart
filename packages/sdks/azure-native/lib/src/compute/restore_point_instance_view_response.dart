// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_restore_point_instance_view_response.dart';
import 'instance_view_status_response.dart';

/// The instance view of a restore point.
class RestorePointInstanceViewResponse {
  /// The disk restore points information.
  final pulumi.Input<List<DiskRestorePointInstanceViewResponse>>? diskRestorePoints;
  /// The resource status information.
  final pulumi.Input<List<InstanceViewStatusResponse>>? statuses;

  /// Creates a new [RestorePointInstanceViewResponse].
  /// [diskRestorePoints] The disk restore points information.
  /// [statuses] The resource status information.
  RestorePointInstanceViewResponse({
    this.diskRestorePoints,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskRestorePoints': ?pulumi.Input.mapOptionalInputValue<List<DiskRestorePointInstanceViewResponse>, List<Map<String, dynamic>>>(diskRestorePoints, (value) => pulumi.Input.encodeList<DiskRestorePointInstanceViewResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<InstanceViewStatusResponse>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RestorePointInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return RestorePointInstanceViewResponse(
      diskRestorePoints: (() { final guardedValue = map['diskRestorePoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiskRestorePointInstanceViewResponse>(guardedValue, (value) => DiskRestorePointInstanceViewResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceViewStatusResponse>(guardedValue, (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

