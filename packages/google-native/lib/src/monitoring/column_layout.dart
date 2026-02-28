// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'column.dart';

/// A simplified layout that divides the available space into vertical columns and arranges a set of widgets vertically in each column.
class ColumnLayout {
  /// The columns of content to display.
  final List<Column>? columns;

  /// Creates a new [ColumnLayout].
  /// [columns] The columns of content to display.
  ColumnLayout({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns == null ? null : pulumi.Input.encodeList<Column, Map<String, dynamic>>(columns!, (value) => value.toMap()),
    };
  }

  factory ColumnLayout.fromMap(Map<String, dynamic> map) {
    return ColumnLayout(
      columns: map['columns'] == null ? null : pulumi.Input.decodeList<Column>(map['columns'], (value) => Column.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

