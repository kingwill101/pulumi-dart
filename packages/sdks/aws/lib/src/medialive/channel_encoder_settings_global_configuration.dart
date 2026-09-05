// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_global_configuration_input_loss_behavior.dart';

class ChannelEncoderSettingsGlobalConfiguration {
  /// Value to set the initial audio gain for the Live Event.
  final pulumi.Input<int?>? initialAudioGain;
  /// Indicates the action to take when the current input completes (e.g. end-of-file). When switchAndLoopInputs is configured the encoder will restart at the beginning of the first input. When “none” is configured the encoder will transcode either black, a solid color, or a user specified slate images per the “Input Loss Behavior” configuration until the next input switch occurs (which is controlled through the Channel Schedule API).
  final pulumi.Input<String?>? inputEndAction;
  /// Settings for system actions when input is lost. See Input Loss Behavior for more details.
  final pulumi.Input<ChannelEncoderSettingsGlobalConfigurationInputLossBehavior?>? inputLossBehavior;
  /// Indicates how MediaLive pipelines are synchronized. PIPELINE\_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the other. EPOCH\_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the Unix epoch.
  final pulumi.Input<String?>? outputLockingMode;
  /// Indicates whether the rate of frames emitted by the Live encoder should be paced by its system clock (which optionally may be locked to another source via NTP) or should be locked to the clock of the source that is providing the input stream.
  final pulumi.Input<String?>? outputTimingSource;
  /// Adjusts video input buffer for streams with very low video framerates. This is commonly set to enabled for music channels with less than one video frame per second.
  final pulumi.Input<String?>? supportLowFramerateInputs;

  /// Creates a new [ChannelEncoderSettingsGlobalConfiguration].
  /// [initialAudioGain] Value to set the initial audio gain for the Live Event.
  /// [inputEndAction] Indicates the action to take when the current input completes (e.g. end-of-file). When switchAndLoopInputs is configured the encoder will restart at the beginning of the first input. When “none” is configured the encoder will transcode either black, a solid color, or a user specified slate images per the “Input Loss Behavior” configuration until the next input switch occurs (which is controlled through the Channel Schedule API).
  /// [inputLossBehavior] Settings for system actions when input is lost. See Input Loss Behavior for more details.
  /// [outputLockingMode] Indicates how MediaLive pipelines are synchronized. PIPELINE\_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the other. EPOCH\_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the Unix epoch.
  /// [outputTimingSource] Indicates whether the rate of frames emitted by the Live encoder should be paced by its system clock (which optionally may be locked to another source via NTP) or should be locked to the clock of the source that is providing the input stream.
  /// [supportLowFramerateInputs] Adjusts video input buffer for streams with very low video framerates. This is commonly set to enabled for music channels with less than one video frame per second.
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
      initialAudioGain: (() { final guardedValue = map['initialAudioGain']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      inputEndAction: (() { final guardedValue = map['inputEndAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputLossBehavior: (() { final guardedValue = map['inputLossBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsGlobalConfigurationInputLossBehavior.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputLockingMode: (() { final guardedValue = map['outputLockingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputTimingSource: (() { final guardedValue = map['outputTimingSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportLowFramerateInputs: (() { final guardedValue = map['supportLowFramerateInputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
