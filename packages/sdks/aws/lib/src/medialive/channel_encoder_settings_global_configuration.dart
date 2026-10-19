// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_global_configuration_input_loss_behavior.dart';

class ChannelEncoderSettingsGlobalConfiguration {
  /// Value to set the initial audio gain for the live event.
  final pulumi.Input<int?>? initialAudioGain;
  /// Action to take when the current input completes. When `switchAndLoopInputs` is configured, the encoder restarts at the beginning of the first input. When `none` is configured, the encoder transcodes black, a solid color, or a user-specified slate image per the input loss behavior configuration until the next input switch occurs, which is controlled through the Channel Schedule API.
  final pulumi.Input<String?>? inputEndAction;
  /// Settings for system actions when input is lost. See `inputLossBehavior` Block for details.
  final pulumi.Input<ChannelEncoderSettingsGlobalConfigurationInputLossBehavior?>? inputLossBehavior;
  /// How MediaLive pipelines are synchronized. `PIPELINE_LOCKING` attempts to synchronize the output of each pipeline to the other. `EPOCH_LOCKING` attempts to synchronize the output of each pipeline to the Unix epoch.
  final pulumi.Input<String?>? outputLockingMode;
  /// Whether the rate of frames emitted by the live encoder is paced by its system clock, which optionally may be locked to another source via NTP, or locked to the clock of the input source.
  final pulumi.Input<String?>? outputTimingSource;
  /// Adjusts the video input buffer for streams with very low video framerates. This is commonly set to enabled for music channels with less than one video frame per second.
  final pulumi.Input<String?>? supportLowFramerateInputs;

  /// Creates a new [ChannelEncoderSettingsGlobalConfiguration].
  /// [initialAudioGain] Value to set the initial audio gain for the live event.
  /// [inputEndAction] Action to take when the current input completes. When `switchAndLoopInputs` is configured, the encoder restarts at the beginning of the first input. When `none` is configured, the encoder transcodes black, a solid color, or a user-specified slate image per the input loss behavior configuration until the next input switch occurs, which is controlled through the Channel Schedule API.
  /// [inputLossBehavior] Settings for system actions when input is lost. See `inputLossBehavior` Block for details.
  /// [outputLockingMode] How MediaLive pipelines are synchronized. `PIPELINE_LOCKING` attempts to synchronize the output of each pipeline to the other. `EPOCH_LOCKING` attempts to synchronize the output of each pipeline to the Unix epoch.
  /// [outputTimingSource] Whether the rate of frames emitted by the live encoder is paced by its system clock, which optionally may be locked to another source via NTP, or locked to the clock of the input source.
  /// [supportLowFramerateInputs] Adjusts the video input buffer for streams with very low video framerates. This is commonly set to enabled for music channels with less than one video frame per second.
  const ChannelEncoderSettingsGlobalConfiguration({
    this.initialAudioGain,
    this.inputEndAction,
    this.inputLossBehavior,
    this.outputLockingMode,
    this.outputTimingSource,
    this.supportLowFramerateInputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialAudioGain': ?initialAudioGain,
      'inputEndAction': ?inputEndAction,
      'inputLossBehavior': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsGlobalConfigurationInputLossBehavior, Map<String, dynamic>>(inputLossBehavior, (value) => value.toMap()),
      'outputLockingMode': ?outputLockingMode,
      'outputTimingSource': ?outputTimingSource,
      'supportLowFramerateInputs': ?supportLowFramerateInputs,
    };
  }

  factory ChannelEncoderSettingsGlobalConfiguration.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsGlobalConfiguration(
      initialAudioGain: (() { final guardedValue = map['initialAudioGain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      inputEndAction: (() { final guardedValue = map['inputEndAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputLossBehavior: (() { final guardedValue = map['inputLossBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsGlobalConfigurationInputLossBehavior.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputLockingMode: (() { final guardedValue = map['outputLockingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputTimingSource: (() { final guardedValue = map['outputTimingSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportLowFramerateInputs: (() { final guardedValue = map['supportLowFramerateInputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
