// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultiplexMultiplexSettings {
  /// Maximum video buffer delay.
  final pulumi.Input<int>? maximumVideoBufferDelayMilliseconds;
  /// Transport stream bit rate.
  final pulumi.Input<int> transportStreamBitrate;
  /// Unique ID for each multiplex.
  final pulumi.Input<int> transportStreamId;
  /// Transport stream reserved bit rate.
  final pulumi.Input<int>? transportStreamReservedBitrate;

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
    return <String, dynamic>{
      'maximumVideoBufferDelayMilliseconds': ?maximumVideoBufferDelayMilliseconds,
      'transportStreamBitrate': transportStreamBitrate,
      'transportStreamId': transportStreamId,
      'transportStreamReservedBitrate': ?transportStreamReservedBitrate,
    };
  }

  factory MultiplexMultiplexSettings.fromMap(Map<String, dynamic> map) {
    return MultiplexMultiplexSettings(
      maximumVideoBufferDelayMilliseconds: map['maximumVideoBufferDelayMilliseconds'] == null ? null : ((map['maximumVideoBufferDelayMilliseconds'] as int).input()).input(),
      transportStreamBitrate: (map['transportStreamBitrate'] as int).input(),
      transportStreamId: (map['transportStreamId'] as int).input(),
      transportStreamReservedBitrate: map['transportStreamReservedBitrate'] == null ? null : ((map['transportStreamReservedBitrate'] as int).input()).input(),
    );
  }
}

