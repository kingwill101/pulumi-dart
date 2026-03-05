// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_udm_snapshots_snapshot.dart';

/// Result data returned by getUdmSnapshots.
class GetUdmSnapshotsResult {
  /// Cloud disk ID. This field is valid only when SourceType = UDM_ECS_DISK.
  final String? diskId;
  final int endTime;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Udm Snapshot IDs.
  final List<String> ids;
  /// ECS instance ID
  final String instanceId;
  /// The ID of the backup job that creates the snapshot.
  final String? jobId;
  final String? outputFile;
  /// A list of Udm Snapshot Entries. Each element contains the following attributes:
  final List<GetUdmSnapshotsSnapshot> snapshots;
  /// Data source type. Only UDM_ECS and UDM_ECS_DISK are supported.
  final String sourceType;
  /// Start Time
  final int startTime;

  /// Creates a new [GetUdmSnapshotsResult].
  /// [diskId] Cloud disk ID. This field is valid only when SourceType = UDM_ECS_DISK.
  /// [endTime] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Udm Snapshot IDs.
  /// [instanceId] ECS instance ID
  /// [jobId] The ID of the backup job that creates the snapshot.
  /// [outputFile] Optional.
  /// [snapshots] A list of Udm Snapshot Entries. Each element contains the following attributes:
  /// [sourceType] Data source type. Only UDM_ECS and UDM_ECS_DISK are supported.
  /// [startTime] Start Time
  GetUdmSnapshotsResult({
    this.diskId,
    required this.endTime,
    required this.id,
    required this.ids,
    required this.instanceId,
    this.jobId,
    this.outputFile,
    required this.snapshots,
    required this.sourceType,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': ?diskId,
      'endTime': endTime,
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'jobId': ?jobId,
      'outputFile': ?outputFile,
      'snapshots': pulumi.Input.encodeList<GetUdmSnapshotsSnapshot, Map<String, dynamic>>(snapshots, (value) => value.toMap()),
      'sourceType': sourceType,
      'startTime': startTime,
    };
  }

  factory GetUdmSnapshotsResult.fromMap(Map<String, dynamic> map) {
    return GetUdmSnapshotsResult(
      diskId: (() { final guardedValue = map['diskId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: map['endTime'] as int,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      jobId: (() { final guardedValue = map['jobId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshots: pulumi.Input.decodeList<GetUdmSnapshotsSnapshot>(map['snapshots']!, (value) => GetUdmSnapshotsSnapshot.fromMap((value as Map).cast<String, dynamic>())),
      sourceType: map['sourceType'] as String,
      startTime: map['startTime'] as int,
    );
  }
}

