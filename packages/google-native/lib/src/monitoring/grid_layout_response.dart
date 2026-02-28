// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget_response.dart';

/// A basic layout divides the available space into vertical columns of equal width and arranges a list of widgets using a row-first strategy.
class GridLayoutResponse {
  /// The number of columns into which the view's width is divided. If omitted or set to zero, a system default will be used while rendering.
  final String columns;
  /// The informational elements that are arranged into the columns row-first.
  final List<WidgetResponse> widgets;

  /// Creates a new [GridLayoutResponse].
  /// [columns] The number of columns into which the view's width is divided. If omitted or set to zero, a system default will be used while rendering.
  /// [widgets] The informational elements that are arranged into the columns row-first.
  GridLayoutResponse({
    required this.columns,
    required this.widgets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': columns,
      'widgets': pulumi.Input.encodeList<WidgetResponse, Map<String, dynamic>>(widgets, (value) => value.toMap()),
    };
  }

  factory GridLayoutResponse.fromMap(Map<String, dynamic> map) {
    return GridLayoutResponse(
      columns: map['columns'] as String,
      widgets: pulumi.Input.decodeList<WidgetResponse>(map['widgets'], (value) => WidgetResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

