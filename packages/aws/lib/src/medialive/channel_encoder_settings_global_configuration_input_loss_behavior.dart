// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_global_configuration_input_loss_behavior_input_loss_image_slate.dart';

class ChannelEncoderSettingsGlobalConfigurationInputLossBehavior {
  final int? blackFrameMsec;
  final String? inputLossImageColor;
  final ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate? inputLossImageSlate;
  final String? inputLossImageType;
  final int? repeatFrameMsec;

  /// Creates a new [ChannelEncoderSettingsGlobalConfigurationInputLossBehavior].
  /// [blackFrameMsec] Optional.
  /// [inputLossImageColor] Optional.
  /// [inputLossImageSlate] Optional.
  /// [inputLossImageType] Optional.
  /// [repeatFrameMsec] Optional.
  ChannelEncoderSettingsGlobalConfigurationInputLossBehavior({
    this.blackFrameMsec,
    this.inputLossImageColor,
    this.inputLossImageSlate,
    this.inputLossImageType,
    this.repeatFrameMsec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blackFrameMsec': ?blackFrameMsec,
      'inputLossImageColor': ?inputLossImageColor,
      'inputLossImageSlate': ?inputLossImageSlate == null ? null : inputLossImageSlate!.toMap(),
      'inputLossImageType': ?inputLossImageType,
      'repeatFrameMsec': ?repeatFrameMsec,
    };
  }

  factory ChannelEncoderSettingsGlobalConfigurationInputLossBehavior.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsGlobalConfigurationInputLossBehavior(
      blackFrameMsec: map['blackFrameMsec'] == null ? null : map['blackFrameMsec'] as int,
      inputLossImageColor: map['inputLossImageColor'] == null ? null : map['inputLossImageColor'] as String,
      inputLossImageSlate: map['inputLossImageSlate'] == null ? null : ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate.fromMap((map['inputLossImageSlate'] as Map).cast<String, dynamic>()),
      inputLossImageType: map['inputLossImageType'] == null ? null : map['inputLossImageType'] as String,
      repeatFrameMsec: map['repeatFrameMsec'] == null ? null : map['repeatFrameMsec'] as int,
    );
  }
}

