// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_get_snapshots_get_snapshots_args_doc}
/// Arguments for getSnapshots.
/// {@endtemplate}
/// {@macro pulumi_eds_get_snapshots_get_snapshots_args_doc}
class GetSnapshotsArgs {
  /// The ID of the Desktop.
  final pulumi.Input<String>? desktopId;
  /// A list of Snapshot IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Snapshot name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the Snapshot.
  final pulumi.Input<String>? snapshotId;

  /// Creates a new [GetSnapshotsArgs].
  /// [desktopId] The ID of the Desktop.
  /// [ids] A list of Snapshot IDs.
  /// [nameRegex] A regex string to filter results by Snapshot name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [snapshotId] The ID of the Snapshot.
  GetSnapshotsArgs({
    this.desktopId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desktopId': ?desktopId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'snapshotId': ?snapshotId,
    };
  }

  factory GetSnapshotsArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsArgs(
      desktopId: map['desktopId'] == null ? null : (map['desktopId']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      snapshotId: map['snapshotId'] == null ? null : (map['snapshotId']! as String).input(),
    );
  }
}

