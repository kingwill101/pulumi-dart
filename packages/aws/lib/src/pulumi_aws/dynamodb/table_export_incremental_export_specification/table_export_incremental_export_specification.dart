// ignore_for_file: unused_element, unnecessary_cast

class TableExportIncrementalExportSpecification {
  final String? exportFromTime;
  final String? exportToTime;
  final String? exportViewType;

  TableExportIncrementalExportSpecification({
    this.exportFromTime,
    this.exportToTime,
    this.exportViewType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exportFromTimeValue = exportFromTime;
    if (exportFromTimeValue != null) {
      map['exportFromTime'] = exportFromTimeValue;
    }
    final exportToTimeValue = exportToTime;
    if (exportToTimeValue != null) {
      map['exportToTime'] = exportToTimeValue;
    }
    final exportViewTypeValue = exportViewType;
    if (exportViewTypeValue != null) {
      map['exportViewType'] = exportViewTypeValue;
    }
    return map;
  }

  factory TableExportIncrementalExportSpecification.fromMap(
      Map<String, dynamic> map) {
    return TableExportIncrementalExportSpecification(
      exportFromTime: map['exportFromTime'] == null
          ? null
          : map['exportFromTime'] as String,
      exportToTime:
          map['exportToTime'] == null ? null : map['exportToTime'] as String,
      exportViewType: map['exportViewType'] == null
          ? null
          : map['exportViewType'] as String,
    );
  }
}
