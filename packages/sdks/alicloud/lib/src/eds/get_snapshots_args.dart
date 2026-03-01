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
    pulumi.Output<String>? desktopId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? snapshotId,
  }) :
      desktopId = pulumi.Input.asOptionalInput<String>(desktopId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      snapshotId = pulumi.Input.asOptionalInput<String>(snapshotId);

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
      desktopId: map['desktopId'] == null ? null : pulumi.Output.create<String>(map['desktopId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      snapshotId: map['snapshotId'] == null ? null : pulumi.Output.create<String>(map['snapshotId'] as String),
    );
  }
}

