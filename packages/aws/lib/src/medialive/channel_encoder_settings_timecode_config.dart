// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsTimecodeConfig {
  /// The source for the timecode that will be associated with the events outputs.
  final String source;

  /// Threshold in frames beyond which output timecode is resynchronized to the input timecode.
  final int? syncThreshold;

  /// Creates a new [ChannelEncoderSettingsTimecodeConfig].
  /// [source] The source for the timecode that will be associated with the events outputs.
  /// [syncThreshold] Threshold in frames beyond which output timecode is resynchronized to the input timecode.
  ChannelEncoderSettingsTimecodeConfig({
    required this.source,
    this.syncThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'source': source, 'syncThreshold': ?syncThreshold};
  }

  factory ChannelEncoderSettingsTimecodeConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsTimecodeConfig(
      source: map['source'] as String,
      syncThreshold: map['syncThreshold'] == null
          ? null
          : map['syncThreshold'] as int,
    );
  }
}
