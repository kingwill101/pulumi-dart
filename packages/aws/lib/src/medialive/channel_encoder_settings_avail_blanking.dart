// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_avail_blanking_avail_blanking_image.dart';

class ChannelEncoderSettingsAvailBlanking {
  /// Blanking image to be used. See Avail Blanking Image for more details.
  final ChannelEncoderSettingsAvailBlankingAvailBlankingImage?
  availBlankingImage;

  /// When set to enabled, causes video, audio and captions to be blanked when insertion metadata is added.
  final String? state;

  /// Creates a new [ChannelEncoderSettingsAvailBlanking].
  /// [availBlankingImage] Blanking image to be used. See Avail Blanking Image for more details.
  /// [state] When set to enabled, causes video, audio and captions to be blanked when insertion metadata is added.
  ChannelEncoderSettingsAvailBlanking({this.availBlankingImage, this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availBlankingImage': ?availBlankingImage == null
          ? null
          : availBlankingImage!.toMap(),
      'state': ?state,
    };
  }

  factory ChannelEncoderSettingsAvailBlanking.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsAvailBlanking(
      availBlankingImage: map['availBlankingImage'] == null
          ? null
          : ChannelEncoderSettingsAvailBlankingAvailBlankingImage.fromMap(
              (map['availBlankingImage'] as Map).cast<String, dynamic>(),
            ),
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
