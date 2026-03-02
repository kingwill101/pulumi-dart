// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableExportIncrementalExportSpecification {
  final pulumi.Input<String>? exportFromTime;
  final pulumi.Input<String>? exportToTime;
  final pulumi.Input<String>? exportViewType;

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
      exportFromTime: map['exportFromTime'] == null ? null : ((map['exportFromTime'] as String).input()).input(),
      exportToTime: map['exportToTime'] == null ? null : ((map['exportToTime'] as String).input()).input(),
      exportViewType: map['exportViewType'] == null ? null : ((map['exportViewType'] as String).input()).input(),
    );
  }
}

