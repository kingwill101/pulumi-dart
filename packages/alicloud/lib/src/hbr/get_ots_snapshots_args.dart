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
    String? endTime,
    List<String>? ids,
    String? outputFile,
    String? startTime,
  }) :
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      startTime = pulumi.Input.asOptionalInput<String>(startTime);

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
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

