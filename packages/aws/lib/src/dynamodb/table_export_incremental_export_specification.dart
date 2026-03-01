// ignore_for_file: unused_element, unnecessary_cast


class TableExportIncrementalExportSpecification {
  final String? exportFromTime;
  final String? exportToTime;
  final String? exportViewType;

  /// Creates a new [TableExportIncrementalExportSpecification].
  /// [exportFromTime] Optional.
  /// [exportToTime] Optional.
  /// [exportViewType] Optional.
  TableExportIncrementalExportSpecification({
    this.exportFromTime,
    this.exportToTime,
    this.exportViewType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportFromTime': ?exportFromTime,
      'exportToTime': ?exportToTime,
      'exportViewType': ?exportViewType,
    };
  }

  factory TableExportIncrementalExportSpecification.fromMap(Map<String, dynamic> map) {
    return TableExportIncrementalExportSpecification(
      exportFromTime: map['exportFromTime'] == null ? null : map['exportFromTime'] as String,
      exportToTime: map['exportToTime'] == null ? null : map['exportToTime'] as String,
      exportViewType: map['exportViewType'] == null ? null : map['exportViewType'] as String,
    );
  }
}

