// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget.dart';

/// Defines the layout properties and content for a row.
class Row {
  /// The relative weight of this row. The row weight is used to adjust the height of rows on the screen (relative to peers). Greater the weight, greater the height of the row on the screen. If omitted, a value of 1 is used while rendering.
  final String? weight;

  /// The display widgets arranged horizontally in this row.
  final List<Widget>? widgets;

  Row({
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
      map['widgets'] = pulumi.Input.encodeList<Widget, Map<String, dynamic>>(
          widgetsValue, (value) => value.toMap());
    }
    return map;
  }

  factory Row.fromMap(Map<String, dynamic> map) {
    return Row(
      weight: map['weight'] == null ? null : map['weight'] as String,
      widgets: map['widgets'] == null
          ? null
          : pulumi.Input.decodeList<Widget>(
              map['widgets'],
              (value) =>
                  Widget.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
