// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_input_settings_audio_selector.dart';
import 'channel_input_attachment_input_settings_caption_selector.dart';
import 'channel_input_attachment_input_settings_network_input_settings.dart';
import 'channel_input_attachment_input_settings_video_selector.dart';

class ChannelInputAttachmentInputSettings {
  /// Select the audio stream to decode for inputs that have multiple. See `audioSelector` Block for details.
  final pulumi.Input<List<ChannelInputAttachmentInputSettingsAudioSelector>?>? audioSelectors;
  /// Select the caption input to use for inputs that have multiple available. See `captionSelector` Block for details.
  final pulumi.Input<List<ChannelInputAttachmentInputSettingsCaptionSelector>?>? captionSelectors;
  /// Whether to enable the deblock filter when filtering.
  final pulumi.Input<String?>? deblockFilter;
  /// Whether to enable the denoise filter when filtering.
  final pulumi.Input<String?>? denoiseFilter;
  /// Magnitude of filtering from 1 (minimal) to 5 (strongest).
  final pulumi.Input<int?>? filterStrength;
  /// Turns on the filter for the input.
  final pulumi.Input<String?>? inputFilter;
  /// Input settings. See `networkInputSettings` Block for details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsNetworkInputSettings?>? networkInputSettings;
  /// PID from which to read SCTE-35 messages.
  final pulumi.Input<int?>? scte35Pid;
  /// Whether to extract applicable ancillary data from a SMPTE-2038 source in the input.
  final pulumi.Input<String?>? smpte2038DataPreference;
  /// Loop input if it is a file.
  final pulumi.Input<String?>? sourceEndBehavior;
  /// Information about one video to extract from the input. See `videoSelector` Block for details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsVideoSelector?>? videoSelector;

  /// Creates a new [ChannelInputAttachmentInputSettings].
  /// [audioSelectors] Select the audio stream to decode for inputs that have multiple. See `audioSelector` Block for details.
  /// [captionSelectors] Select the caption input to use for inputs that have multiple available. See `captionSelector` Block for details.
  /// [deblockFilter] Whether to enable the deblock filter when filtering.
  /// [denoiseFilter] Whether to enable the denoise filter when filtering.
  /// [filterStrength] Magnitude of filtering from 1 (minimal) to 5 (strongest).
  /// [inputFilter] Turns on the filter for the input.
  /// [networkInputSettings] Input settings. See `networkInputSettings` Block for details.
  /// [scte35Pid] PID from which to read SCTE-35 messages.
  /// [smpte2038DataPreference] Whether to extract applicable ancillary data from a SMPTE-2038 source in the input.
  /// [sourceEndBehavior] Loop input if it is a file.
  /// [videoSelector] Information about one video to extract from the input. See `videoSelector` Block for details.
  const ChannelInputAttachmentInputSettings({
    this.audioSelectors,
    this.captionSelectors,
    this.deblockFilter,
    this.denoiseFilter,
    this.filterStrength,
    this.inputFilter,
    this.networkInputSettings,
    this.scte35Pid,
    this.smpte2038DataPreference,
    this.sourceEndBehavior,
    this.videoSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioSelectors': ?pulumi.Input.mapOptionalInputValue<List<ChannelInputAttachmentInputSettingsAudioSelector>, List<Map<String, dynamic>>>(audioSelectors, (value) => pulumi.Input.encodeList<ChannelInputAttachmentInputSettingsAudioSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'captionSelectors': ?pulumi.Input.mapOptionalInputValue<List<ChannelInputAttachmentInputSettingsCaptionSelector>, List<Map<String, dynamic>>>(captionSelectors, (value) => pulumi.Input.encodeList<ChannelInputAttachmentInputSettingsCaptionSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deblockFilter': ?deblockFilter,
      'denoiseFilter': ?denoiseFilter,
      'filterStrength': ?filterStrength,
      'inputFilter': ?inputFilter,
      'networkInputSettings': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettingsNetworkInputSettings, Map<String, dynamic>>(networkInputSettings, (value) => value.toMap()),
      'scte35Pid': ?scte35Pid,
      'smpte2038DataPreference': ?smpte2038DataPreference,
      'sourceEndBehavior': ?sourceEndBehavior,
      'videoSelector': ?pulumi.Input.mapOptionalInputValue<ChannelInputAttachmentInputSettingsVideoSelector, Map<String, dynamic>>(videoSelector, (value) => value.toMap()),
    };
  }

  factory ChannelInputAttachmentInputSettings.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettings(
      audioSelectors: (() { final guardedValue = map['audioSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelInputAttachmentInputSettingsAudioSelector>(guardedValue, (value) => ChannelInputAttachmentInputSettingsAudioSelector.fromMap((value as Map).cast<String, dynamic>()))); })(),
      captionSelectors: (() { final guardedValue = map['captionSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelInputAttachmentInputSettingsCaptionSelector>(guardedValue, (value) => ChannelInputAttachmentInputSettingsCaptionSelector.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deblockFilter: (() { final guardedValue = map['deblockFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      denoiseFilter: (() { final guardedValue = map['denoiseFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterStrength: (() { final guardedValue = map['filterStrength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      inputFilter: (() { final guardedValue = map['inputFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInputSettings: (() { final guardedValue = map['networkInputSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentInputSettingsNetworkInputSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scte35Pid: (() { final guardedValue = map['scte35Pid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      smpte2038DataPreference: (() { final guardedValue = map['smpte2038DataPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEndBehavior: (() { final guardedValue = map['sourceEndBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      videoSelector: (() { final guardedValue = map['videoSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelInputAttachmentInputSettingsVideoSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
