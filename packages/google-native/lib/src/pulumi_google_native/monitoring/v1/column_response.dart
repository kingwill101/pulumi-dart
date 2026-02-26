// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'widget_response.dart';

/// Defines the layout properties and content for a column.
class ColumnResponse {
  /// The relative weight of this column. The column weight is used to adjust the width of columns on the screen (relative to peers). Greater the weight, greater the width of the column on the screen. If omitted, a value of 1 is used while rendering.
  final String weight;

  /// The display widgets arranged vertically in this column.
  final List<WidgetResponse> widgets;

  ColumnResponse({
    required this.weight,
    required this.widgets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['weight'] = weight;
    map['widgets'] = Input.encodeList<WidgetResponse, Map<String, dynamic>>(
        widgets, (value) => value.toMap());
    return map;
  }

  factory ColumnResponse.fromMap(Map<String, dynamic> map) {
    return ColumnResponse(
      weight: map['weight'] as String,
      widgets: Input.decodeList<WidgetResponse>(
          map['widgets'],
          (value) =>
              WidgetResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
