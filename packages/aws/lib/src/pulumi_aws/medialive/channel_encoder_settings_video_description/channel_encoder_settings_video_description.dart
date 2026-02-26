// ignore_for_file: unused_element, unnecessary_cast

import '../channel_encoder_settings_video_description_codec_settings/channel_encoder_settings_video_description_codec_settings.dart';

class ChannelEncoderSettingsVideoDescription {
  /// The video codec settings. See Video Codec Settings for more details.
  final ChannelEncoderSettingsVideoDescriptionCodecSettings? codecSettings;

  /// Output video height in pixels.
  final int? height;

  /// The name of the video description.
  final String name;

  /// Indicate how to respond to the AFD values that might be in the input video.
  final String? respondToAfd;

  /// Behavior on how to scale.
  final String? scalingBehavior;

  /// Changes the strength of the anti-alias filter used for scaling.
  final int? sharpness;

  /// Output video width in pixels.
  final int? width;

  ChannelEncoderSettingsVideoDescription({
    this.codecSettings,
    this.height,
    required this.name,
    this.respondToAfd,
    this.scalingBehavior,
    this.sharpness,
    this.width,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codecSettingsValue = codecSettings;
    if (codecSettingsValue != null) {
      map['codecSettings'] = codecSettingsValue.toMap();
    }
    final heightValue = height;
    if (heightValue != null) {
      map['height'] = heightValue;
    }
    map['name'] = name;
    final respondToAfdValue = respondToAfd;
    if (respondToAfdValue != null) {
      map['respondToAfd'] = respondToAfdValue;
    }
    final scalingBehaviorValue = scalingBehavior;
    if (scalingBehaviorValue != null) {
      map['scalingBehavior'] = scalingBehaviorValue;
    }
    final sharpnessValue = sharpness;
    if (sharpnessValue != null) {
      map['sharpness'] = sharpnessValue;
    }
    final widthValue = width;
    if (widthValue != null) {
      map['width'] = widthValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsVideoDescription.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescription(
      codecSettings: map['codecSettings'] == null
          ? null
          : ChannelEncoderSettingsVideoDescriptionCodecSettings.fromMap(
              (map['codecSettings'] as Map).cast<String, dynamic>()),
      height: map['height'] == null ? null : map['height'] as int,
      name: map['name'] as String,
      respondToAfd:
          map['respondToAfd'] == null ? null : map['respondToAfd'] as String,
      scalingBehavior: map['scalingBehavior'] == null
          ? null
          : map['scalingBehavior'] as String,
      sharpness: map['sharpness'] == null ? null : map['sharpness'] as int,
      width: map['width'] == null ? null : map['width'] as int,
    );
  }
}
