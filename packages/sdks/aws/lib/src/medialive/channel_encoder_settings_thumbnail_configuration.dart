// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsThumbnailConfiguration {
  /// Enables the thumbnail feature, which generates thumbnails of the incoming video in each pipeline in the channel. Valid values are `AUTO` and `DISABLED`.
  final pulumi.Input<String> state;

  /// Creates a new [ChannelEncoderSettingsThumbnailConfiguration].
  /// [state] Enables the thumbnail feature, which generates thumbnails of the incoming video in each pipeline in the channel. Valid values are `AUTO` and `DISABLED`.
  const ChannelEncoderSettingsThumbnailConfiguration({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory ChannelEncoderSettingsThumbnailConfiguration.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsThumbnailConfiguration(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
