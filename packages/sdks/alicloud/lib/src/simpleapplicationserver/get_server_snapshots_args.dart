// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_simpleapplicationserver_get_server_snapshots_get_server_snapshots_args_doc}
/// Arguments for getServerSnapshots.
/// {@endtemplate}
/// {@macro pulumi_simpleapplicationserver_get_server_snapshots_get_server_snapshots_args_doc}
class GetServerSnapshotsArgs {
  /// The ID of the disk.
  final pulumi.Input<String>? diskId;
  /// A list of Snapshot IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the simple application server.
  final pulumi.Input<String>? instanceId;
  /// A regex string to filter results by Snapshot name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the snapshots. Valid values: `Progressing`, `Accomplished` and `Failed`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetServerSnapshotsArgs].
  /// [diskId] The ID of the disk.
  /// [ids] A list of Snapshot IDs.
  /// [instanceId] The ID of the simple application server.
  /// [nameRegex] A regex string to filter results by Snapshot name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the snapshots. Valid values: `Progressing`, `Accomplished` and `Failed`.
  GetServerSnapshotsArgs({
    this.diskId,
    this.ids,
    this.instanceId,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': ?diskId,
      'ids': ?ids,
      'instanceId': ?instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetServerSnapshotsArgs.fromMap(Map<String, dynamic> map) {
    return GetServerSnapshotsArgs(
      diskId: (() { final guardedValue = map['diskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

