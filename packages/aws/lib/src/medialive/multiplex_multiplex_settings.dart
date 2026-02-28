// ignore_for_file: unused_element, unnecessary_cast

class MultiplexMultiplexSettings {
  /// Maximum video buffer delay.
  final int? maximumVideoBufferDelayMilliseconds;

  /// Transport stream bit rate.
  final int transportStreamBitrate;

  /// Unique ID for each multiplex.
  final int transportStreamId;

  /// Transport stream reserved bit rate.
  final int? transportStreamReservedBitrate;

  /// Creates a new [MultiplexMultiplexSettings].
  /// [maximumVideoBufferDelayMilliseconds] Maximum video buffer delay.
  /// [transportStreamBitrate] Transport stream bit rate.
  /// [transportStreamId] Unique ID for each multiplex.
  /// [transportStreamReservedBitrate] Transport stream reserved bit rate.
  MultiplexMultiplexSettings({
    this.maximumVideoBufferDelayMilliseconds,
    required this.transportStreamBitrate,
    required this.transportStreamId,
    this.transportStreamReservedBitrate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maximumVideoBufferDelayMillisecondsValue =
        maximumVideoBufferDelayMilliseconds;
    if (maximumVideoBufferDelayMillisecondsValue != null) {
      map['maximumVideoBufferDelayMilliseconds'] =
          maximumVideoBufferDelayMillisecondsValue;
    }
    map['transportStreamBitrate'] = transportStreamBitrate;
    map['transportStreamId'] = transportStreamId;
    final transportStreamReservedBitrateValue = transportStreamReservedBitrate;
    if (transportStreamReservedBitrateValue != null) {
      map['transportStreamReservedBitrate'] =
          transportStreamReservedBitrateValue;
    }
    return map;
  }

  factory MultiplexMultiplexSettings.fromMap(Map<String, dynamic> map) {
    return MultiplexMultiplexSettings(
      maximumVideoBufferDelayMilliseconds:
          map['maximumVideoBufferDelayMilliseconds'] == null
              ? null
              : map['maximumVideoBufferDelayMilliseconds'] as int,
      transportStreamBitrate: map['transportStreamBitrate'] as int,
      transportStreamId: map['transportStreamId'] as int,
      transportStreamReservedBitrate:
          map['transportStreamReservedBitrate'] == null
              ? null
              : map['transportStreamReservedBitrate'] as int,
    );
  }
}
