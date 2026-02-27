// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tile.dart';

/// A mosaic layout divides the available space into a grid of blocks, and overlays the grid with tiles. Unlike GridLayout, tiles may span multiple grid blocks and can be placed at arbitrary locations in the grid.
class MosaicLayout {
  /// The number of columns in the mosaic grid. The number of columns must be between 1 and 12, inclusive.
  final int? columns;

  /// The tiles to display.
  final List<Tile>? tiles;

  MosaicLayout({
    this.columns,
    this.tiles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnsValue = columns;
    if (columnsValue != null) {
      map['columns'] = columnsValue;
    }
    final tilesValue = tiles;
    if (tilesValue != null) {
      map['tiles'] = pulumi.Input.encodeList<Tile, Map<String, dynamic>>(
          tilesValue, (value) => value.toMap());
    }
    return map;
  }

  factory MosaicLayout.fromMap(Map<String, dynamic> map) {
    return MosaicLayout(
      columns: map['columns'] == null ? null : map['columns'] as int,
      tiles: map['tiles'] == null
          ? null
          : pulumi.Input.decodeList<Tile>(map['tiles'],
              (value) => Tile.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
