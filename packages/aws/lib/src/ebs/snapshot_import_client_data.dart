// ignore_for_file: unused_element, unnecessary_cast

class SnapshotImportClientData {
  /// A user-defined comment about the disk upload.
  final String? comment;

  /// The time that the disk upload ends.
  final String? uploadEnd;

  /// The size of the uploaded disk image, in GiB.
  final double? uploadSize;

  /// The time that the disk upload starts.
  final String? uploadStart;

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
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    final uploadEndValue = uploadEnd;
    if (uploadEndValue != null) {
      map['uploadEnd'] = uploadEndValue;
    }
    final uploadSizeValue = uploadSize;
    if (uploadSizeValue != null) {
      map['uploadSize'] = uploadSizeValue;
    }
    final uploadStartValue = uploadStart;
    if (uploadStartValue != null) {
      map['uploadStart'] = uploadStartValue;
    }
    return map;
  }

  factory SnapshotImportClientData.fromMap(Map<String, dynamic> map) {
    return SnapshotImportClientData(
      comment: map['comment'] == null ? null : map['comment'] as String,
      uploadEnd: map['uploadEnd'] == null ? null : map['uploadEnd'] as String,
      uploadSize:
          map['uploadSize'] == null ? null : map['uploadSize'] as double,
      uploadStart:
          map['uploadStart'] == null ? null : map['uploadStart'] as String,
    );
  }
}
