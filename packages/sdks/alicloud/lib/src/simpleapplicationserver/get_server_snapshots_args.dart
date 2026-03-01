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
    pulumi.Output<String>? diskId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      diskId = pulumi.Input.asOptionalInput<String>(diskId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      diskId: map['diskId'] == null ? null : pulumi.Output.create<String>(map['diskId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

