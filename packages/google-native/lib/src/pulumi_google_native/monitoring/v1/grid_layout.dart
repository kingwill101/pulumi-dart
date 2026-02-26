// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'widget.dart';

/// A basic layout divides the available space into vertical columns of equal width and arranges a list of widgets using a row-first strategy.
class GridLayout {
  /// The number of columns into which the view's width is divided. If omitted or set to zero, a system default will be used while rendering.
  final String? columns;

  /// The informational elements that are arranged into the columns row-first.
  final List<Widget>? widgets;

  GridLayout({
    this.columns,
    this.widgets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnsValue = columns;
    if (columnsValue != null) {
      map['columns'] = columnsValue;
    }
    final widgetsValue = widgets;
    if (widgetsValue != null) {
      map['widgets'] = Input.encodeList<Widget, Map<String, dynamic>>(
          widgetsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GridLayout.fromMap(Map<String, dynamic> map) {
    return GridLayout(
      columns: map['columns'] == null ? null : map['columns'] as String,
      widgets: map['widgets'] == null
          ? null
          : Input.decodeList<Widget>(
              map['widgets'],
              (value) =>
                  Widget.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
