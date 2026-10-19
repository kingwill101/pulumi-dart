// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_global_configuration_input_loss_behavior_input_loss_image_slate.dart';

class ChannelEncoderSettingsGlobalConfigurationInputLossBehavior {
  /// Amount of time, in milliseconds, to display black video when the input is lost.
  final pulumi.Input<int?>? blackFrameMsec;
  /// Color to display, as a hexadecimal RGBA value, when `inputLossImageType` is `color`.
  final pulumi.Input<String?>? inputLossImageColor;
  /// Image to display when `inputLossImageType` is `slate`. See `inputLossImageSlate` Block for details.
  final pulumi.Input<ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate?>? inputLossImageSlate;
  /// Whether to display a solid color or a slate image when input is lost.
  final pulumi.Input<String?>? inputLossImageType;
  /// Amount of time, in milliseconds, to repeat the previous picture when the input is lost.
  final pulumi.Input<int?>? repeatFrameMsec;

  /// Creates a new [ChannelEncoderSettingsGlobalConfigurationInputLossBehavior].
  /// [blackFrameMsec] Amount of time, in milliseconds, to display black video when the input is lost.
  /// [inputLossImageColor] Color to display, as a hexadecimal RGBA value, when `inputLossImageType` is `color`.
  /// [inputLossImageSlate] Image to display when `inputLossImageType` is `slate`. See `inputLossImageSlate` Block for details.
  /// [inputLossImageType] Whether to display a solid color or a slate image when input is lost.
  /// [repeatFrameMsec] Amount of time, in milliseconds, to repeat the previous picture when the input is lost.
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
      blackFrameMsec: (() { final guardedValue = map['blackFrameMsec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      inputLossImageColor: (() { final guardedValue = map['inputLossImageColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputLossImageSlate: (() { final guardedValue = map['inputLossImageSlate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsGlobalConfigurationInputLossBehaviorInputLossImageSlate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputLossImageType: (() { final guardedValue = map['inputLossImageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repeatFrameMsec: (() { final guardedValue = map['repeatFrameMsec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
