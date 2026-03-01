// ignore_for_file: unused_element, unnecessary_cast

import 'widget.dart';

/// A single tile in the mosaic. The placement and size of the tile are configurable.
class Tile {
  /// The height of the tile, measured in grid blocks. Tiles must have a minimum height of 1.
  final int? height;

  /// The informational widget contained in the tile. For example an XyChart.
  final Widget? widget;

  /// The width of the tile, measured in grid blocks. Tiles must have a minimum width of 1.
  final int? width;

  /// The zero-indexed position of the tile in grid blocks relative to the left edge of the grid. Tiles must be contained within the specified number of columns. x_pos cannot be negative.
  final int? xPos;

  /// The zero-indexed position of the tile in grid blocks relative to the top edge of the grid. y_pos cannot be negative.
  final int? yPos;

  /// Creates a new [Tile].
  /// [height] The height of the tile, measured in grid blocks. Tiles must have a minimum height of 1.
  /// [widget] The informational widget contained in the tile. For example an XyChart.
  /// [width] The width of the tile, measured in grid blocks. Tiles must have a minimum width of 1.
  /// [xPos] The zero-indexed position of the tile in grid blocks relative to the left edge of the grid. Tiles must be contained within the specified number of columns. x_pos cannot be negative.
  /// [yPos] The zero-indexed position of the tile in grid blocks relative to the top edge of the grid. y_pos cannot be negative.
  Tile({this.height, this.widget, this.width, this.xPos, this.yPos});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'height': ?height,
      'widget': ?widget == null ? null : widget!.toMap(),
      'width': ?width,
      'xPos': ?xPos,
      'yPos': ?yPos,
    };
  }

  factory Tile.fromMap(Map<String, dynamic> map) {
    return Tile(
      height: map['height'] == null ? null : map['height'] as int,
      widget: map['widget'] == null
          ? null
          : Widget.fromMap((map['widget'] as Map).cast<String, dynamic>()),
      width: map['width'] == null ? null : map['width'] as int,
      xPos: map['xPos'] == null ? null : map['xPos'] as int,
      yPos: map['yPos'] == null ? null : map['yPos'] as int,
    );
  }
}
