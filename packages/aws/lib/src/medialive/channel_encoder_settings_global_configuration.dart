// ignore_for_file: unused_element, unnecessary_cast

import 'channel_encoder_settings_global_configuration_input_loss_behavior.dart';

class ChannelEncoderSettingsGlobalConfiguration {
  /// Value to set the initial audio gain for the Live Event.
  final int? initialAudioGain;

  /// Indicates the action to take when the current input completes (e.g. end-of-file). When switchAndLoopInputs is configured the encoder will restart at the beginning of the first input. When “none” is configured the encoder will transcode either black, a solid color, or a user specified slate images per the “Input Loss Behavior” configuration until the next input switch occurs (which is controlled through the Channel Schedule API).
  final String? inputEndAction;

  /// Settings for system actions when input is lost. See Input Loss Behavior for more details.
  final ChannelEncoderSettingsGlobalConfigurationInputLossBehavior?
      inputLossBehavior;

  /// Indicates how MediaLive pipelines are synchronized. PIPELINE\_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the other. EPOCH\_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the Unix epoch.
  final String? outputLockingMode;

  /// Indicates whether the rate of frames emitted by the Live encoder should be paced by its system clock (which optionally may be locked to another source via NTP) or should be locked to the clock of the source that is providing the input stream.
  final String? outputTimingSource;

  /// Adjusts video input buffer for streams with very low video framerates. This is commonly set to enabled for music channels with less than one video frame per second.
  final String? supportLowFramerateInputs;

  /// Creates a new [ChannelEncoderSettingsGlobalConfiguration].
  /// [initialAudioGain] Value to set the initial audio gain for the Live Event.
  /// [inputEndAction] Indicates the action to take when the current input completes (e.g. end-of-file). When switchAndLoopInputs is configured the encoder will restart at the beginning of the first input. When “none” is configured the encoder will transcode either black, a solid color, or a user specified slate images per the “Input Loss Behavior” configuration until the next input switch occurs (which is controlled through the Channel Schedule API).
  /// [inputLossBehavior] Settings for system actions when input is lost. See Input Loss Behavior for more details.
  /// [outputLockingMode] Indicates how MediaLive pipelines are synchronized. PIPELINE\_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the other. EPOCH\_LOCKING - MediaLive will attempt to synchronize the output of each pipeline to the Unix epoch.
  /// [outputTimingSource] Indicates whether the rate of frames emitted by the Live encoder should be paced by its system clock (which optionally may be locked to another source via NTP) or should be locked to the clock of the source that is providing the input stream.
  /// [supportLowFramerateInputs] Adjusts video input buffer for streams with very low video framerates. This is commonly set to enabled for music channels with less than one video frame per second.
  ChannelEncoderSettingsGlobalConfiguration({
    this.initialAudioGain,
    this.inputEndAction,
    this.inputLossBehavior,
    this.outputLockingMode,
    this.outputTimingSource,
    this.supportLowFramerateInputs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final initialAudioGainValue = initialAudioGain;
    if (initialAudioGainValue != null) {
      map['initialAudioGain'] = initialAudioGainValue;
    }
    final inputEndActionValue = inputEndAction;
    if (inputEndActionValue != null) {
      map['inputEndAction'] = inputEndActionValue;
    }
    final inputLossBehaviorValue = inputLossBehavior;
    if (inputLossBehaviorValue != null) {
      map['inputLossBehavior'] = inputLossBehaviorValue.toMap();
    }
    final outputLockingModeValue = outputLockingMode;
    if (outputLockingModeValue != null) {
      map['outputLockingMode'] = outputLockingModeValue;
    }
    final outputTimingSourceValue = outputTimingSource;
    if (outputTimingSourceValue != null) {
      map['outputTimingSource'] = outputTimingSourceValue;
    }
    final supportLowFramerateInputsValue = supportLowFramerateInputs;
    if (supportLowFramerateInputsValue != null) {
      map['supportLowFramerateInputs'] = supportLowFramerateInputsValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsGlobalConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsGlobalConfiguration(
      initialAudioGain: map['initialAudioGain'] == null
          ? null
          : map['initialAudioGain'] as int,
      inputEndAction: map['inputEndAction'] == null
          ? null
          : map['inputEndAction'] as String,
      inputLossBehavior: map['inputLossBehavior'] == null
          ? null
          : ChannelEncoderSettingsGlobalConfigurationInputLossBehavior.fromMap(
              (map['inputLossBehavior'] as Map).cast<String, dynamic>()),
      outputLockingMode: map['outputLockingMode'] == null
          ? null
          : map['outputLockingMode'] as String,
      outputTimingSource: map['outputTimingSource'] == null
          ? null
          : map['outputTimingSource'] as String,
      supportLowFramerateInputs: map['supportLowFramerateInputs'] == null
          ? null
          : map['supportLowFramerateInputs'] as String,
    );
  }
}
