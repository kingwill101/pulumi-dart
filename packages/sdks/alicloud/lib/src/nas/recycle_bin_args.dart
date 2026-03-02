// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_recycle_bin_recycle_bin_args_doc}
/// The set of arguments for RecycleBin.
/// {@endtemplate}
/// {@macro pulumi_nas_recycle_bin_recycle_bin_args_doc}
class RecycleBinArgs {
  /// The ID of the file system for which you want to enable the recycle bin feature.
  final pulumi.Input<String> fileSystemId;
  /// The period for which the files in the recycle bin are retained. Unit: days. Valid values: `1` to `180`.
  final pulumi.Input<int>? reservedDays;

  /// Creates a new [RecycleBinArgs].
  /// [fileSystemId] The ID of the file system for which you want to enable the recycle bin feature.
  /// [reservedDays] The period for which the files in the recycle bin are retained. Unit: days. Valid values: `1` to `180`.
  RecycleBinArgs({
    required this.fileSystemId,
    this.reservedDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'reservedDays': ?reservedDays,
    };
  }

  factory RecycleBinArgs.fromMap(Map<String, dynamic> map) {
    return RecycleBinArgs(
      fileSystemId: (map['fileSystemId'] as String).input(),
      reservedDays: map['reservedDays'] == null ? null : (map['reservedDays']! as int).input(),
    );
  }
}

