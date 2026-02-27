// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'widget.dart';

/// Defines the layout properties and content for a column.
class Column {
  /// The relative weight of this column. The column weight is used to adjust the width of columns on the screen (relative to peers). Greater the weight, greater the width of the column on the screen. If omitted, a value of 1 is used while rendering.
  final String? weight;

  /// The display widgets arranged vertically in this column.
  final List<Widget>? widgets;

  Column({
    this.weight,
    this.widgets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final weightValue = weight;
    if (weightValue != null) {
      map['weight'] = weightValue;
    }
    final widgetsValue = widgets;
    if (widgetsValue != null) {
      map['widgets'] = Input.encodeList<Widget, Map<String, dynamic>>(
          widgetsValue, (value) => value.toMap());
    }
    return map;
  }

  factory Column.fromMap(Map<String, dynamic> map) {
    return Column(
      weight: map['weight'] == null ? null : map['weight'] as String,
      widgets: map['widgets'] == null
          ? null
          : Input.decodeList<Widget>(
              map['widgets'],
              (value) =>
                  Widget.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
