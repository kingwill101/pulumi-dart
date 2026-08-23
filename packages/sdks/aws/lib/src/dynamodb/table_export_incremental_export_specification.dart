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
  const TableExportIncrementalExportSpecification({
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
      exportFromTime: (() { final guardedValue = map['exportFromTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportToTime: (() { final guardedValue = map['exportToTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportViewType: (() { final guardedValue = map['exportViewType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
