// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsTimecodeConfig {
  /// The source for the timecode that will be associated with the events outputs.
  final pulumi.Input<String> source;
  /// Threshold in frames beyond which output timecode is resynchronized to the input timecode.
  final pulumi.Input<int?>? syncThreshold;

  /// Creates a new [ChannelEncoderSettingsTimecodeConfig].
  /// [source] The source for the timecode that will be associated with the events outputs.
  /// [syncThreshold] Threshold in frames beyond which output timecode is resynchronized to the input timecode.
  const ChannelEncoderSettingsTimecodeConfig({
    required this.source,
    this.syncThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': source,
      'syncThreshold': ?syncThreshold,
    };
  }

  factory ChannelEncoderSettingsTimecodeConfig.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsTimecodeConfig(
      source: pulumi.Input.fromValue(map['source'] as String),
      syncThreshold: (() { final guardedValue = map['syncThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
