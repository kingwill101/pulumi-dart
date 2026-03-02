// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_input_settings_audio_selector.dart';
import 'channel_input_attachment_input_settings_caption_selector.dart';
import 'channel_input_attachment_input_settings_network_input_settings.dart';
import 'channel_input_attachment_input_settings_video_selector.dart';

class ChannelInputAttachmentInputSettings {
  /// Used to select the audio stream to decode for inputs that have multiple. See Audio Selectors for more details.
  final pulumi.Input<List<ChannelInputAttachmentInputSettingsAudioSelector>>? audioSelectors;
  /// Used to select the caption input to use for inputs that have multiple available. See Caption Selectors for more details.
  final pulumi.Input<List<ChannelInputAttachmentInputSettingsCaptionSelector>>? captionSelectors;
  /// Enable or disable the deblock filter when filtering.
  final pulumi.Input<String>? deblockFilter;
  /// Enable or disable the denoise filter when filtering.
  final pulumi.Input<String>? denoiseFilter;
  /// Adjusts the magnitude of filtering from 1 (minimal) to 5 (strongest).
  final pulumi.Input<int>? filterStrength;
  /// Turns on the filter for the input.
  final pulumi.Input<String>? inputFilter;
  /// Input settings. See Network Input Settings for more details.
  final pulumi.Input<ChannelInputAttachmentInputSettingsNetworkInputSettings>? networkInputSettings;
  /// PID from which to read SCTE-35 messages.
  final pulumi.Input<int>? scte35Pid;
  /// Specifies whether to extract applicable ancillary data from a SMPTE-2038 source in the input.
  final pulumi.Input<String>? smpte2038DataPreference;
  /// Loop input if it is a file.
  final pulumi.Input<String>? sourceEndBehavior;
  final pulumi.Input<ChannelInputAttachmentInputSettingsVideoSelector>? videoSelector;

  /// Creates a new [ChannelInputAttachmentInputSettings].
  /// [audioSelectors] Used to select the audio stream to decode for inputs that have multiple. See Audio Selectors for more details.
  /// [captionSelectors] Used to select the caption input to use for inputs that have multiple available. See Caption Selectors for more details.
  /// [deblockFilter] Enable or disable the deblock filter when filtering.
  /// [denoiseFilter] Enable or disable the denoise filter when filtering.
  /// [filterStrength] Adjusts the magnitude of filtering from 1 (minimal) to 5 (strongest).
  /// [inputFilter] Turns on the filter for the input.
  /// [networkInputSettings] Input settings. See Network Input Settings for more details.
  /// [scte35Pid] PID from which to read SCTE-35 messages.
  /// [smpte2038DataPreference] Specifies whether to extract applicable ancillary data from a SMPTE-2038 source in the input.
  /// [sourceEndBehavior] Loop input if it is a file.
  /// [videoSelector] Optional.
  ChannelInputAttachmentInputSettings({
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
      audioSelectors: map['audioSelectors'] == null ? null : ((pulumi.Input.decodeList<ChannelInputAttachmentInputSettingsAudioSelector>(map['audioSelectors']!, (value) => ChannelInputAttachmentInputSettingsAudioSelector.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      captionSelectors: map['captionSelectors'] == null ? null : ((pulumi.Input.decodeList<ChannelInputAttachmentInputSettingsCaptionSelector>(map['captionSelectors']!, (value) => ChannelInputAttachmentInputSettingsCaptionSelector.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      deblockFilter: map['deblockFilter'] == null ? null : ((map['deblockFilter'] as String).input()).input(),
      denoiseFilter: map['denoiseFilter'] == null ? null : ((map['denoiseFilter'] as String).input()).input(),
      filterStrength: map['filterStrength'] == null ? null : ((map['filterStrength'] as int).input()).input(),
      inputFilter: map['inputFilter'] == null ? null : ((map['inputFilter'] as String).input()).input(),
      networkInputSettings: map['networkInputSettings'] == null ? null : ((ChannelInputAttachmentInputSettingsNetworkInputSettings.fromMap((map['networkInputSettings']! as Map).cast<String, dynamic>())).input()).input(),
      scte35Pid: map['scte35Pid'] == null ? null : ((map['scte35Pid'] as int).input()).input(),
      smpte2038DataPreference: map['smpte2038DataPreference'] == null ? null : ((map['smpte2038DataPreference'] as String).input()).input(),
      sourceEndBehavior: map['sourceEndBehavior'] == null ? null : ((map['sourceEndBehavior'] as String).input()).input(),
      videoSelector: map['videoSelector'] == null ? null : ((ChannelInputAttachmentInputSettingsVideoSelector.fromMap((map['videoSelector']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

