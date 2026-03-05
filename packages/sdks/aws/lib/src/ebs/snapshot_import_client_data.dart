// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SnapshotImportClientData {
  /// A user-defined comment about the disk upload.
  final pulumi.Input<String>? comment;
  /// The time that the disk upload ends.
  final pulumi.Input<String>? uploadEnd;
  /// The size of the uploaded disk image, in GiB.
  final pulumi.Input<double>? uploadSize;
  /// The time that the disk upload starts.
  final pulumi.Input<String>? uploadStart;

  /// Creates a new [SnapshotImportClientData].
  /// [comment] A user-defined comment about the disk upload.
  /// [uploadEnd] The time that the disk upload ends.
  /// [uploadSize] The size of the uploaded disk image, in GiB.
  /// [uploadStart] The time that the disk upload starts.
  SnapshotImportClientData({
    this.comment,
    this.uploadEnd,
    this.uploadSize,
    this.uploadStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'uploadEnd': ?uploadEnd,
      'uploadSize': ?uploadSize,
      'uploadStart': ?uploadStart,
    };
  }

  factory SnapshotImportClientData.fromMap(Map<String, dynamic> map) {
    return SnapshotImportClientData(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uploadEnd: (() { final guardedValue = map['uploadEnd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uploadSize: (() { final guardedValue = map['uploadSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      uploadStart: (() { final guardedValue = map['uploadStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

