// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_video_description_codec_settings.dart';

class ChannelEncoderSettingsVideoDescription {
  /// The video codec settings. See Video Codec Settings for more details.
  final pulumi.Input<ChannelEncoderSettingsVideoDescriptionCodecSettings>?
  codecSettings;

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
      'codecSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ChannelEncoderSettingsVideoDescriptionCodecSettings,
            Map<String, dynamic>
          >(codecSettings, (value) => value.toMap()),
      'height': ?height,
      'name': name,
      'respondToAfd': ?respondToAfd,
      'scalingBehavior': ?scalingBehavior,
      'sharpness': ?sharpness,
      'width': ?width,
    };
  }

  factory ChannelEncoderSettingsVideoDescription.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsVideoDescription(
      codecSettings: (() {
        final guardedValue = map['codecSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ChannelEncoderSettingsVideoDescriptionCodecSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      height: (() {
        final guardedValue = map['height'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      respondToAfd: (() {
        final guardedValue = map['respondToAfd'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scalingBehavior: (() {
        final guardedValue = map['scalingBehavior'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sharpness: (() {
        final guardedValue = map['sharpness'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      width: (() {
        final guardedValue = map['width'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
