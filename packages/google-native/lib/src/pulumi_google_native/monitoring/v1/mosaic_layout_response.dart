// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'tile_response.dart';

/// A mosaic layout divides the available space into a grid of blocks, and overlays the grid with tiles. Unlike GridLayout, tiles may span multiple grid blocks and can be placed at arbitrary locations in the grid.
class MosaicLayoutResponse {
  /// The number of columns in the mosaic grid. The number of columns must be between 1 and 12, inclusive.
  final int columns;

  /// The tiles to display.
  final List<TileResponse> tiles;

  MosaicLayoutResponse({
    required this.columns,
    required this.tiles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columns'] = columns;
    map['tiles'] = Input.encodeList<TileResponse, Map<String, dynamic>>(
        tiles, (value) => value.toMap());
    return map;
  }

  factory MosaicLayoutResponse.fromMap(Map<String, dynamic> map) {
    return MosaicLayoutResponse(
      columns: map['columns'] as int,
      tiles: Input.decodeList<TileResponse>(
          map['tiles'],
          (value) =>
              TileResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
