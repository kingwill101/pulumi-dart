// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_get_ots_snapshots_get_ots_snapshots_args_doc}
/// Arguments for getOtsSnapshots.
/// {@endtemplate}
/// {@macro pulumi_hbr_get_ots_snapshots_get_ots_snapshots_args_doc}
class GetOtsSnapshotsArgs {
  /// The end time of the backup. This value must be a UNIX timestamp. Unit: milliseconds
  final pulumi.Input<String>? endTime;
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The start time of the backup. This value must be a UNIX timestamp. Unit: milliseconds.
  final pulumi.Input<String>? startTime;

  /// Creates a new [GetOtsSnapshotsArgs].
  /// [endTime] The end time of the backup. This value must be a UNIX timestamp. Unit: milliseconds
  /// [ids] Optional.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [startTime] The start time of the backup. This value must be a UNIX timestamp. Unit: milliseconds.
  GetOtsSnapshotsArgs({
    this.endTime,
    this.ids,
    this.outputFile,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'startTime': ?startTime,
    };
  }

  factory GetOtsSnapshotsArgs.fromMap(Map<String, dynamic> map) {
    return GetOtsSnapshotsArgs(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

