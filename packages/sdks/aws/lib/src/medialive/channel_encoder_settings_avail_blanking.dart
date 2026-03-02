// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_avail_blanking_avail_blanking_image.dart';

class ChannelEncoderSettingsAvailBlanking {
  /// Blanking image to be used. See Avail Blanking Image for more details.
  final pulumi.Input<ChannelEncoderSettingsAvailBlankingAvailBlankingImage>? availBlankingImage;
  /// When set to enabled, causes video, audio and captions to be blanked when insertion metadata is added.
  final pulumi.Input<String>? state;

  /// Creates a new [ChannelEncoderSettingsAvailBlanking].
  /// [availBlankingImage] Blanking image to be used. See Avail Blanking Image for more details.
  /// [state] When set to enabled, causes video, audio and captions to be blanked when insertion metadata is added.
  ChannelEncoderSettingsAvailBlanking({
    this.availBlankingImage,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availBlankingImage': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsAvailBlankingAvailBlankingImage, Map<String, dynamic>>(availBlankingImage, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory ChannelEncoderSettingsAvailBlanking.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsAvailBlanking(
      availBlankingImage: map['availBlankingImage'] == null ? null : (ChannelEncoderSettingsAvailBlankingAvailBlankingImage.fromMap((map['availBlankingImage'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

