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
  const MultiplexMultiplexSettings({
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
      maximumVideoBufferDelayMilliseconds: (() { final guardedValue = map['maximumVideoBufferDelayMilliseconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      transportStreamBitrate: pulumi.Input.fromValue(map['transportStreamBitrate'] as int),
      transportStreamId: pulumi.Input.fromValue(map['transportStreamId'] as int),
      transportStreamReservedBitrate: (() { final guardedValue = map['transportStreamReservedBitrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

