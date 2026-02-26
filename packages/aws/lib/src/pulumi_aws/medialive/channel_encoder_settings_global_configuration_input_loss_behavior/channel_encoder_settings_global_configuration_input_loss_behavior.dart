// ignore_for_file: unused_element, unnecessary_cast

import '../channel_encoder_settings_global_configuration_input_loss_behavior_input_loss_image_slate/channel_encoder_settings_global_configuration_input_loss_behavior_input_loss_image_slate.dart';

class ChannelEncoderSettingsGlobalConfigurationInputLossBehavior {
  final int? blackFrameMsec;
  final String? inputLossImageColor;
  final ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate?
      inputLossImageSlate;
  final String? inputLossImageType;
  final int? repeatFrameMsec;

  ChannelEncoderSettingsGlobalConfigurationInputLossBehavior({
    this.blackFrameMsec,
    this.inputLossImageColor,
    this.inputLossImageSlate,
    this.inputLossImageType,
    this.repeatFrameMsec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blackFrameMsecValue = blackFrameMsec;
    if (blackFrameMsecValue != null) {
      map['blackFrameMsec'] = blackFrameMsecValue;
    }
    final inputLossImageColorValue = inputLossImageColor;
    if (inputLossImageColorValue != null) {
      map['inputLossImageColor'] = inputLossImageColorValue;
    }
    final inputLossImageSlateValue = inputLossImageSlate;
    if (inputLossImageSlateValue != null) {
      map['inputLossImageSlate'] = inputLossImageSlateValue.toMap();
    }
    final inputLossImageTypeValue = inputLossImageType;
    if (inputLossImageTypeValue != null) {
      map['inputLossImageType'] = inputLossImageTypeValue;
    }
    final repeatFrameMsecValue = repeatFrameMsec;
    if (repeatFrameMsecValue != null) {
      map['repeatFrameMsec'] = repeatFrameMsecValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsGlobalConfigurationInputLossBehavior.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsGlobalConfigurationInputLossBehavior(
      blackFrameMsec:
          map['blackFrameMsec'] == null ? null : map['blackFrameMsec'] as int,
      inputLossImageColor: map['inputLossImageColor'] == null
          ? null
          : map['inputLossImageColor'] as String,
      inputLossImageSlate: map['inputLossImageSlate'] == null
          ? null
          : ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate
              .fromMap(
                  (map['inputLossImageSlate'] as Map).cast<String, dynamic>()),
      inputLossImageType: map['inputLossImageType'] == null
          ? null
          : map['inputLossImageType'] as String,
      repeatFrameMsec:
          map['repeatFrameMsec'] == null ? null : map['repeatFrameMsec'] as int,
    );
  }
}
