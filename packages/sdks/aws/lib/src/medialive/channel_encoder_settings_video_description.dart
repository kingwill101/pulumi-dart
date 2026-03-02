// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_video_description_codec_settings.dart';

class ChannelEncoderSettingsVideoDescription {
  /// The video codec settings. See Video Codec Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsVideoDescriptionCodecSettings>? codecSettings;
  /// Output video height in pixels.
  final pulumi.Input<int>? height;
  /// The name of the video description.
  final pulumi.Input<String> name;
  /// Indicate how to respond to the AFD values that might be in the input video.
  final pulumi.Input<String>? respondToAfd;
  /// Behavior on how to scale.
  final pulumi.Input<String>? scalingBehavior;
  /// Changes the strength of the anti-alias filter used for scaling.
  final pulumi.Input<int>? sharpness;
  /// Output video width in pixels.
  final pulumi.Input<int>? width;

  /// Creates a new [ChannelEncoderSettingsVideoDescription].
  /// [codecSettings] The video codec settings. See Video Codec Settings for more details.
  /// [height] Output video height in pixels.
  /// [name] The name of the video description.
  /// [respondToAfd] Indicate how to respond to the AFD values that might be in the input video.
  /// [scalingBehavior] Behavior on how to scale.
  /// [sharpness] Changes the strength of the anti-alias filter used for scaling.
  /// [width] Output video width in pixels.
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
    return <String, dynamic>{
      'codecSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsVideoDescriptionCodecSettings, Map<String, dynamic>>(codecSettings, (value) => value.toMap()),
      'height': ?height,
      'name': name,
      'respondToAfd': ?respondToAfd,
      'scalingBehavior': ?scalingBehavior,
      'sharpness': ?sharpness,
      'width': ?width,
    };
  }

  factory ChannelEncoderSettingsVideoDescription.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsVideoDescription(
      codecSettings: map['codecSettings'] == null ? null : ((ChannelEncoderSettingsVideoDescriptionCodecSettings.fromMap((map['codecSettings']! as Map).cast<String, dynamic>())).input()).input(),
      height: map['height'] == null ? null : ((map['height'] as int).input()).input(),
      name: (map['name'] as String).input(),
      respondToAfd: map['respondToAfd'] == null ? null : ((map['respondToAfd'] as String).input()).input(),
      scalingBehavior: map['scalingBehavior'] == null ? null : ((map['scalingBehavior'] as String).input()).input(),
      sharpness: map['sharpness'] == null ? null : ((map['sharpness'] as int).input()).input(),
      width: map['width'] == null ? null : ((map['width'] as int).input()).input(),
    );
  }
}

