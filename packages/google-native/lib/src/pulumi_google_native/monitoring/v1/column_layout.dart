// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'column.dart';

/// A simplified layout that divides the available space into vertical columns and arranges a set of widgets vertically in each column.
class ColumnLayout {
  /// The columns of content to display.
  final List<Column>? columns;

  ColumnLayout({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnsValue = columns;
    if (columnsValue != null) {
      map['columns'] = Input.encodeList<Column, Map<String, dynamic>>(
          columnsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ColumnLayout.fromMap(Map<String, dynamic> map) {
    return ColumnLayout(
      columns: map['columns'] == null
          ? null
          : Input.decodeList<Column>(
              map['columns'],
              (value) =>
                  Column.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
