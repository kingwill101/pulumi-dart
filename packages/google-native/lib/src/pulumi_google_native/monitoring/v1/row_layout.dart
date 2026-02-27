// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'row.dart';

/// A simplified layout that divides the available space into rows and arranges a set of widgets horizontally in each row.
class RowLayout {
  /// The rows of content to display.
  final List<Row>? rows;

  RowLayout({
    this.rows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rowsValue = rows;
    if (rowsValue != null) {
      map['rows'] = pulumi.Input.encodeList<Row, Map<String, dynamic>>(
          rowsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RowLayout.fromMap(Map<String, dynamic> map) {
    return RowLayout(
      rows: map['rows'] == null
          ? null
          : pulumi.Input.decodeList<Row>(map['rows'],
              (value) => Row.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
