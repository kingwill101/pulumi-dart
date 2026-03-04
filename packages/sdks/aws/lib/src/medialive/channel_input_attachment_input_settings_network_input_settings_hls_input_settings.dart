// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentInputSettingsNetworkInputSettingsHlsInputSettings {
  /// The bitrate is specified in bits per second, as in an HLS manifest.
  final pulumi.Input<int>? bandwidth;

  /// Buffer segments.
  final pulumi.Input<int>? bufferSegments;

  /// The number of consecutive times that attempts to read a manifest or segment must fail before the input is considered unavailable.
  final pulumi.Input<int>? retries;

  /// The number of seconds between retries when an attempt to read a manifest or segment fails.
  final pulumi.Input<int>? retryInterval;
  final pulumi.Input<String>? scte35Source;

  /// Creates a new [ChannelInputAttachmentInputSettingsNetworkInputSettingsHlsInputSettings].
  /// [bandwidth] The bitrate is specified in bits per second, as in an HLS manifest.
  /// [bufferSegments] Buffer segments.
  /// [retries] The number of consecutive times that attempts to read a manifest or segment must fail before the input is considered unavailable.
  /// [retryInterval] The number of seconds between retries when an attempt to read a manifest or segment fails.
  /// [scte35Source] Optional.
  ChannelInputAttachmentInputSettingsNetworkInputSettingsHlsInputSettings({
    this.bandwidth,
    this.bufferSegments,
    this.retries,
    this.retryInterval,
    this.scte35Source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'bufferSegments': ?bufferSegments,
      'retries': ?retries,
      'retryInterval': ?retryInterval,
      'scte35Source': ?scte35Source,
    };
  }

  factory ChannelInputAttachmentInputSettingsNetworkInputSettingsHlsInputSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelInputAttachmentInputSettingsNetworkInputSettingsHlsInputSettings(
      bandwidth: (() {
        final guardedValue = map['bandwidth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      bufferSegments: (() {
        final guardedValue = map['bufferSegments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      retries: (() {
        final guardedValue = map['retries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      retryInterval: (() {
        final guardedValue = map['retryInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      scte35Source: (() {
        final guardedValue = map['scte35Source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
