// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshots_snapshot.dart';

/// Result data returned by getSnapshots.
class GetSnapshotsResult {
  final String? desktopId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? snapshotId;
  final List<GetSnapshotsSnapshot> snapshots;

  /// Creates a new [GetSnapshotsResult].
  /// [desktopId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [snapshotId] Optional.
  /// [snapshots] Required.
  GetSnapshotsResult({
    this.desktopId,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.snapshotId,
    required this.snapshots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desktopId': ?desktopId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'snapshotId': ?snapshotId,
      'snapshots':
          pulumi.Input.encodeList<GetSnapshotsSnapshot, Map<String, dynamic>>(
            snapshots,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetSnapshotsResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsResult(
      desktopId: (() {
        final guardedValue = map['desktopId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      snapshotId: (() {
        final guardedValue = map['snapshotId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      snapshots: pulumi.Input.decodeList<GetSnapshotsSnapshot>(
        map['snapshots']!,
        (value) => GetSnapshotsSnapshot.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
