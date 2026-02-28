// ignore_for_file: unused_element, unnecessary_cast

/// Sprite sheet configuration.
class SpriteSheetResponse {
  /// The maximum number of sprites per row in a sprite sheet. The default is 0, which indicates no maximum limit.
  final int columnCount;

  /// End time in seconds, relative to the output file timeline. When `end_time_offset` is not specified, the sprites are generated until the end of the output file.
  final String endTimeOffset;

  /// File name prefix for the generated sprite sheets. Each sprite sheet has an incremental 10-digit zero-padded suffix starting from 0 before the extension, such as `sprite_sheet0000000123.jpeg`.
  final String filePrefix;

  /// Format type. The default is `jpeg`. Supported formats: - `jpeg`
  final String format;

  /// Starting from `0s`, create sprites at regular intervals. Specify the interval value in seconds.
  final String interval;

  /// The quality of the generated sprite sheet. Enter a value between 1 and 100, where 1 is the lowest quality and 100 is the highest quality. The default is 100. A high quality value corresponds to a low image data compression ratio.
  final int quality;

  /// The maximum number of rows per sprite sheet. When the sprite sheet is full, a new sprite sheet is created. The default is 0, which indicates no maximum limit.
  final int rowCount;

  /// The height of sprite in pixels. Must be an even integer. To preserve the source aspect ratio, set the SpriteSheet.sprite_height_pixels field or the SpriteSheet.sprite_width_pixels field, but not both (the API will automatically calculate the missing field). For portrait videos that contain horizontal ASR and rotation metadata, provide the height, in pixels, per the horizontal ASR. The API calculates the width per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  final int spriteHeightPixels;

  /// The width of sprite in pixels. Must be an even integer. To preserve the source aspect ratio, set the SpriteSheet.sprite_width_pixels field or the SpriteSheet.sprite_height_pixels field, but not both (the API will automatically calculate the missing field). For portrait videos that contain horizontal ASR and rotation metadata, provide the width, in pixels, per the horizontal ASR. The API calculates the height per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  final int spriteWidthPixels;

  /// Start time in seconds, relative to the output file timeline. Determines the first sprite to pick. The default is `0s`.
  final String startTimeOffset;

  /// Total number of sprites. Create the specified number of sprites distributed evenly across the timeline of the output media. The default is 100.
  final int totalCount;

  /// Creates a new [SpriteSheetResponse].
  /// [columnCount] The maximum number of sprites per row in a sprite sheet. The default is 0, which indicates no maximum limit.
  /// [endTimeOffset] End time in seconds, relative to the output file timeline. When `end_time_offset` is not specified, the sprites are generated until the end of the output file.
  /// [filePrefix] File name prefix for the generated sprite sheets. Each sprite sheet has an incremental 10-digit zero-padded suffix starting from 0 before the extension, such as `sprite_sheet0000000123.jpeg`.
  /// [format] Format type. The default is `jpeg`. Supported formats: - `jpeg`
  /// [interval] Starting from `0s`, create sprites at regular intervals. Specify the interval value in seconds.
  /// [quality] The quality of the generated sprite sheet. Enter a value between 1 and 100, where 1 is the lowest quality and 100 is the highest quality. The default is 100. A high quality value corresponds to a low image data compression ratio.
  /// [rowCount] The maximum number of rows per sprite sheet. When the sprite sheet is full, a new sprite sheet is created. The default is 0, which indicates no maximum limit.
  /// [spriteHeightPixels] The height of sprite in pixels. Must be an even integer. To preserve the source aspect ratio, set the SpriteSheet.sprite_height_pixels field or the SpriteSheet.sprite_width_pixels field, but not both (the API will automatically calculate the missing field). For portrait videos that contain horizontal ASR and rotation metadata, provide the height, in pixels, per the horizontal ASR. The API calculates the width per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  /// [spriteWidthPixels] The width of sprite in pixels. Must be an even integer. To preserve the source aspect ratio, set the SpriteSheet.sprite_width_pixels field or the SpriteSheet.sprite_height_pixels field, but not both (the API will automatically calculate the missing field). For portrait videos that contain horizontal ASR and rotation metadata, provide the width, in pixels, per the horizontal ASR. The API calculates the height per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  /// [startTimeOffset] Start time in seconds, relative to the output file timeline. Determines the first sprite to pick. The default is `0s`.
  /// [totalCount] Total number of sprites. Create the specified number of sprites distributed evenly across the timeline of the output media. The default is 100.
  SpriteSheetResponse({
    required this.columnCount,
    required this.endTimeOffset,
    required this.filePrefix,
    required this.format,
    required this.interval,
    required this.quality,
    required this.rowCount,
    required this.spriteHeightPixels,
    required this.spriteWidthPixels,
    required this.startTimeOffset,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnCount'] = columnCount;
    map['endTimeOffset'] = endTimeOffset;
    map['filePrefix'] = filePrefix;
    map['format'] = format;
    map['interval'] = interval;
    map['quality'] = quality;
    map['rowCount'] = rowCount;
    map['spriteHeightPixels'] = spriteHeightPixels;
    map['spriteWidthPixels'] = spriteWidthPixels;
    map['startTimeOffset'] = startTimeOffset;
    map['totalCount'] = totalCount;
    return map;
  }

  factory SpriteSheetResponse.fromMap(Map<String, dynamic> map) {
    return SpriteSheetResponse(
      columnCount: map['columnCount'] as int,
      endTimeOffset: map['endTimeOffset'] as String,
      filePrefix: map['filePrefix'] as String,
      format: map['format'] as String,
      interval: map['interval'] as String,
      quality: map['quality'] as int,
      rowCount: map['rowCount'] as int,
      spriteHeightPixels: map['spriteHeightPixels'] as int,
      spriteWidthPixels: map['spriteWidthPixels'] as int,
      startTimeOffset: map['startTimeOffset'] as String,
      totalCount: map['totalCount'] as int,
    );
  }
}
