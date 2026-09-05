// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_global_configuration_input_loss_behavior_input_loss_image_slate.dart';

class ChannelEncoderSettingsGlobalConfigurationInputLossBehavior {
  final pulumi.Input<int?>? blackFrameMsec;
  final pulumi.Input<String?>? inputLossImageColor;
  final pulumi.Input<ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate?>? inputLossImageSlate;
  final pulumi.Input<String?>? inputLossImageType;
  final pulumi.Input<int?>? repeatFrameMsec;

  /// Creates a new [ChannelEncoderSettingsGlobalConfigurationInputLossBehavior].
  /// [blackFrameMsec] Optional.
  /// [inputLossImageColor] Optional.
  /// [inputLossImageSlate] Optional.
  /// [inputLossImageType] Optional.
  /// [repeatFrameMsec] Optional.
  const ChannelEncoderSettingsGlobalConfigurationInputLossBehavior({
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
      'inputLossImageSlate': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate, Map<String, dynamic>>(inputLossImageSlate, (value) => value.toMap()),
      'inputLossImageType': ?inputLossImageType,
      'repeatFrameMsec': ?repeatFrameMsec,
    };
  }

  factory ChannelEncoderSettingsGlobalConfigurationInputLossBehavior.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsGlobalConfigurationInputLossBehavior(
      blackFrameMsec: (() { final guardedValue = map['blackFrameMsec']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      inputLossImageColor: (() { final guardedValue = map['inputLossImageColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputLossImageSlate: (() { final guardedValue = map['inputLossImageSlate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputLossImageType: (() { final guardedValue = map['inputLossImageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repeatFrameMsec: (() { final guardedValue = map['repeatFrameMsec']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
