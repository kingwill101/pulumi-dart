// ignore_for_file: unused_element, unnecessary_cast

class ChannelInputAttachmentInputSettingsNetworkInputSettingsHlsInputSettings {
  /// The bitrate is specified in bits per second, as in an HLS manifest.
  final int? bandwidth;

  /// Buffer segments.
  final int? bufferSegments;

  /// The number of consecutive times that attempts to read a manifest or segment must fail before the input is considered unavailable.
  final int? retries;

  /// The number of seconds between retries when an attempt to read a manifest or segment fails.
  final int? retryInterval;
  final String? scte35Source;

  ChannelInputAttachmentInputSettingsNetworkInputSettingsHlsInputSettings({
    this.bandwidth,
    this.bufferSegments,
    this.retries,
    this.retryInterval,
    this.scte35Source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bandwidthValue = bandwidth;
    if (bandwidthValue != null) {
      map['bandwidth'] = bandwidthValue;
    }
    final bufferSegmentsValue = bufferSegments;
    if (bufferSegmentsValue != null) {
      map['bufferSegments'] = bufferSegmentsValue;
    }
    final retriesValue = retries;
    if (retriesValue != null) {
      map['retries'] = retriesValue;
    }
    final retryIntervalValue = retryInterval;
    if (retryIntervalValue != null) {
      map['retryInterval'] = retryIntervalValue;
    }
    final scte35SourceValue = scte35Source;
    if (scte35SourceValue != null) {
      map['scte35Source'] = scte35SourceValue;
    }
    return map;
  }

  factory ChannelInputAttachmentInputSettingsNetworkInputSettingsHlsInputSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsNetworkInputSettingsHlsInputSettings(
      bandwidth: map['bandwidth'] == null ? null : map['bandwidth'] as int,
      bufferSegments:
          map['bufferSegments'] == null ? null : map['bufferSegments'] as int,
      retries: map['retries'] == null ? null : map['retries'] as int,
      retryInterval:
          map['retryInterval'] == null ? null : map['retryInterval'] as int,
      scte35Source:
          map['scte35Source'] == null ? null : map['scte35Source'] as String,
    );
  }
}
