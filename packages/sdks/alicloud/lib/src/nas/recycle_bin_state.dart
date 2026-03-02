// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RecycleBin resources.
class RecycleBinState {
  /// The ID of the file system for which you want to enable the recycle bin feature.
  final pulumi.Input<String>? fileSystemId;
  /// The period for which the files in the recycle bin are retained. Unit: days. Valid values: `1` to `180`.
  final pulumi.Input<int>? reservedDays;
  /// The status of the recycle bin.
  final pulumi.Input<String>? status;

  /// Creates a new [RecycleBinState].
  /// [fileSystemId] The ID of the file system for which you want to enable the recycle bin feature.
  /// [reservedDays] The period for which the files in the recycle bin are retained. Unit: days. Valid values: `1` to `180`.
  /// [status] The status of the recycle bin.
  RecycleBinState({
    this.fileSystemId,
    this.reservedDays,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': ?fileSystemId,
      'reservedDays': ?reservedDays,
      'status': ?status,
    };
  }

  factory RecycleBinState.fromMap(Map<String, dynamic> map) {
    return RecycleBinState(
      fileSystemId: map['fileSystemId'] == null ? null : (map['fileSystemId'] as String).input(),
      reservedDays: map['reservedDays'] == null ? null : (map['reservedDays'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

