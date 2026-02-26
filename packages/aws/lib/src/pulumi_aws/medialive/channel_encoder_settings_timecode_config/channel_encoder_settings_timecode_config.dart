// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsTimecodeConfig {
  /// The source for the timecode that will be associated with the events outputs.
  final String source;

  /// Threshold in frames beyond which output timecode is resynchronized to the input timecode.
  final int? syncThreshold;

  ChannelEncoderSettingsTimecodeConfig({
    required this.source,
    this.syncThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['source'] = source;
    final syncThresholdValue = syncThreshold;
    if (syncThresholdValue != null) {
      map['syncThreshold'] = syncThresholdValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsTimecodeConfig.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsTimecodeConfig(
      source: map['source'] as String,
      syncThreshold:
          map['syncThreshold'] == null ? null : map['syncThreshold'] as int,
    );
  }
}
