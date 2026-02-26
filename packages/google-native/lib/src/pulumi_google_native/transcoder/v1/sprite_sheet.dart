// ignore_for_file: unused_element, unnecessary_cast

/// Sprite sheet configuration.
class SpriteSheet {
  /// The maximum number of sprites per row in a sprite sheet. The default is 0, which indicates no maximum limit.
  final int? columnCount;

  /// End time in seconds, relative to the output file timeline. When `end_time_offset` is not specified, the sprites are generated until the end of the output file.
  final String? endTimeOffset;

  /// File name prefix for the generated sprite sheets. Each sprite sheet has an incremental 10-digit zero-padded suffix starting from 0 before the extension, such as `sprite_sheet0000000123.jpeg`.
  final String filePrefix;

  /// Format type. The default is `jpeg`. Supported formats: - `jpeg`
  final String? format;

  /// Starting from `0s`, create sprites at regular intervals. Specify the interval value in seconds.
  final String? interval;

  /// The quality of the generated sprite sheet. Enter a value between 1 and 100, where 1 is the lowest quality and 100 is the highest quality. The default is 100. A high quality value corresponds to a low image data compression ratio.
  final int? quality;

  /// The maximum number of rows per sprite sheet. When the sprite sheet is full, a new sprite sheet is created. The default is 0, which indicates no maximum limit.
  final int? rowCount;

  /// The height of sprite in pixels. Must be an even integer. To preserve the source aspect ratio, set the SpriteSheet.sprite_height_pixels field or the SpriteSheet.sprite_width_pixels field, but not both (the API will automatically calculate the missing field). For portrait videos that contain horizontal ASR and rotation metadata, provide the height, in pixels, per the horizontal ASR. The API calculates the width per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  final int spriteHeightPixels;

  /// The width of sprite in pixels. Must be an even integer. To preserve the source aspect ratio, set the SpriteSheet.sprite_width_pixels field or the SpriteSheet.sprite_height_pixels field, but not both (the API will automatically calculate the missing field). For portrait videos that contain horizontal ASR and rotation metadata, provide the width, in pixels, per the horizontal ASR. The API calculates the height per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  final int spriteWidthPixels;

  /// Start time in seconds, relative to the output file timeline. Determines the first sprite to pick. The default is `0s`.
  final String? startTimeOffset;

  /// Total number of sprites. Create the specified number of sprites distributed evenly across the timeline of the output media. The default is 100.
  final int? totalCount;

  SpriteSheet({
    this.columnCount,
    this.endTimeOffset,
    required this.filePrefix,
    this.format,
    this.interval,
    this.quality,
    this.rowCount,
    required this.spriteHeightPixels,
    required this.spriteWidthPixels,
    this.startTimeOffset,
    this.totalCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnCountValue = columnCount;
    if (columnCountValue != null) {
      map['columnCount'] = columnCountValue;
    }
    final endTimeOffsetValue = endTimeOffset;
    if (endTimeOffsetValue != null) {
      map['endTimeOffset'] = endTimeOffsetValue;
    }
    map['filePrefix'] = filePrefix;
    final formatValue = format;
    if (formatValue != null) {
      map['format'] = formatValue;
    }
    final intervalValue = interval;
    if (intervalValue != null) {
      map['interval'] = intervalValue;
    }
    final qualityValue = quality;
    if (qualityValue != null) {
      map['quality'] = qualityValue;
    }
    final rowCountValue = rowCount;
    if (rowCountValue != null) {
      map['rowCount'] = rowCountValue;
    }
    map['spriteHeightPixels'] = spriteHeightPixels;
    map['spriteWidthPixels'] = spriteWidthPixels;
    final startTimeOffsetValue = startTimeOffset;
    if (startTimeOffsetValue != null) {
      map['startTimeOffset'] = startTimeOffsetValue;
    }
    final totalCountValue = totalCount;
    if (totalCountValue != null) {
      map['totalCount'] = totalCountValue;
    }
    return map;
  }

  factory SpriteSheet.fromMap(Map<String, dynamic> map) {
    return SpriteSheet(
      columnCount:
          map['columnCount'] == null ? null : map['columnCount'] as int,
      endTimeOffset:
          map['endTimeOffset'] == null ? null : map['endTimeOffset'] as String,
      filePrefix: map['filePrefix'] as String,
      format: map['format'] == null ? null : map['format'] as String,
      interval: map['interval'] == null ? null : map['interval'] as String,
      quality: map['quality'] == null ? null : map['quality'] as int,
      rowCount: map['rowCount'] == null ? null : map['rowCount'] as int,
      spriteHeightPixels: map['spriteHeightPixels'] as int,
      spriteWidthPixels: map['spriteWidthPixels'] as int,
      startTimeOffset: map['startTimeOffset'] == null
          ? null
          : map['startTimeOffset'] as String,
      totalCount: map['totalCount'] == null ? null : map['totalCount'] as int,
    );
  }
}
