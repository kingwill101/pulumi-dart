// ignore_for_file: unused_element, unnecessary_cast

import 'widget_response.dart';

/// A single tile in the mosaic. The placement and size of the tile are configurable.
class TileResponse {
  /// The height of the tile, measured in grid blocks. Tiles must have a minimum height of 1.
  final int height;

  /// The informational widget contained in the tile. For example an XyChart.
  final WidgetResponse widget;

  /// The width of the tile, measured in grid blocks. Tiles must have a minimum width of 1.
  final int width;

  /// The zero-indexed position of the tile in grid blocks relative to the left edge of the grid. Tiles must be contained within the specified number of columns. x_pos cannot be negative.
  final int xPos;

  /// The zero-indexed position of the tile in grid blocks relative to the top edge of the grid. y_pos cannot be negative.
  final int yPos;

  TileResponse({
    required this.height,
    required this.widget,
    required this.width,
    required this.xPos,
    required this.yPos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['widget'] = widget.toMap();
    map['width'] = width;
    map['xPos'] = xPos;
    map['yPos'] = yPos;
    return map;
  }

  factory TileResponse.fromMap(Map<String, dynamic> map) {
    return TileResponse(
      height: map['height'] as int,
      widget: WidgetResponse.fromMap(
          (map['widget'] as Map).cast<String, dynamic>()),
      width: map['width'] as int,
      xPos: map['xPos'] as int,
      yPos: map['yPos'] as int,
    );
  }
}
