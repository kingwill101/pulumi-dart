// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ots_snapshots_snapshot.dart';

/// Result data returned by getOtsSnapshots.
class GetOtsSnapshotsResult {
  final String? endTime;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final List<GetOtsSnapshotsSnapshot> snapshots;
  final String? startTime;

  /// Creates a new [GetOtsSnapshotsResult].
  /// [endTime] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [snapshots] Required.
  /// [startTime] Optional.
  const GetOtsSnapshotsResult({
    this.endTime,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.snapshots,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'snapshots': pulumi.Input.encodeList<GetOtsSnapshotsSnapshot, Map<String, dynamic>>(snapshots, (value) => value.toMap()),
      'startTime': ?startTime,
    };
  }

  factory GetOtsSnapshotsResult.fromMap(Map<String, dynamic> map) {
    return GetOtsSnapshotsResult(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshots: pulumi.Input.decodeList<GetOtsSnapshotsSnapshot>(map['snapshots']!, (value) => GetOtsSnapshotsSnapshot.fromMap((value as Map).cast<String, dynamic>())),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

