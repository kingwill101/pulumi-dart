// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget.dart';

/// Defines the layout properties and content for a column.
class Column {
  /// The relative weight of this column. The column weight is used to adjust the width of columns on the screen (relative to peers). Greater the weight, greater the width of the column on the screen. If omitted, a value of 1 is used while rendering.
  final String? weight;

  /// The display widgets arranged vertically in this column.
  final List<Widget>? widgets;

  /// Creates a new [Column].
  /// [weight] The relative weight of this column. The column weight is used to adjust the width of columns on the screen (relative to peers). Greater the weight, greater the width of the column on the screen. If omitted, a value of 1 is used while rendering.
  /// [widgets] The display widgets arranged vertically in this column.
  Column({this.weight, this.widgets});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weight': ?weight,
      'widgets': ?widgets == null
          ? null
          : pulumi.Input.encodeList<Widget, Map<String, dynamic>>(
              widgets!,
              (value) => value.toMap(),
            ),
    };
  }

  factory Column.fromMap(Map<String, dynamic> map) {
    return Column(
      weight: map['weight'] == null ? null : map['weight'] as String,
      widgets: map['widgets'] == null
          ? null
          : pulumi.Input.decodeList<Widget>(
              map['widgets'],
              (value) => Widget.fromMap((value as Map).cast<String, dynamic>()),
            ),
    );
  }
}
