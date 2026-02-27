// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../channel_input_attachment_input_settings_audio_selector/channel_input_attachment_input_settings_audio_selector.dart';
import '../channel_input_attachment_input_settings_caption_selector/channel_input_attachment_input_settings_caption_selector.dart';
import '../channel_input_attachment_input_settings_network_input_settings/channel_input_attachment_input_settings_network_input_settings.dart';
import '../channel_input_attachment_input_settings_video_selector/channel_input_attachment_input_settings_video_selector.dart';

class ChannelInputAttachmentInputSettings {
  /// Used to select the audio stream to decode for inputs that have multiple. See Audio Selectors for more details.
  final List<ChannelInputAttachmentInputSettingsAudioSelector>? audioSelectors;

  /// Used to select the caption input to use for inputs that have multiple available. See Caption Selectors for more details.
  final List<ChannelInputAttachmentInputSettingsCaptionSelector>?
      captionSelectors;

  /// Enable or disable the deblock filter when filtering.
  final String? deblockFilter;

  /// Enable or disable the denoise filter when filtering.
  final String? denoiseFilter;

  /// Adjusts the magnitude of filtering from 1 (minimal) to 5 (strongest).
  final int? filterStrength;

  /// Turns on the filter for the input.
  final String? inputFilter;

  /// Input settings. See Network Input Settings for more details.
  final ChannelInputAttachmentInputSettingsNetworkInputSettings?
      networkInputSettings;

  /// PID from which to read SCTE-35 messages.
  final int? scte35Pid;

  /// Specifies whether to extract applicable ancillary data from a SMPTE-2038 source in the input.
  final String? smpte2038DataPreference;

  /// Loop input if it is a file.
  final String? sourceEndBehavior;
  final ChannelInputAttachmentInputSettingsVideoSelector? videoSelector;

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
    final map = <String, dynamic>{};
    final audioSelectorsValue = audioSelectors;
    if (audioSelectorsValue != null) {
      map['audioSelectors'] = pulumi.Input.encodeList<
          ChannelInputAttachmentInputSettingsAudioSelector,
          Map<String, dynamic>>(audioSelectorsValue, (value) => value.toMap());
    }
    final captionSelectorsValue = captionSelectors;
    if (captionSelectorsValue != null) {
      map['captionSelectors'] = pulumi.Input.encodeList<
              ChannelInputAttachmentInputSettingsCaptionSelector,
              Map<String, dynamic>>(
          captionSelectorsValue, (value) => value.toMap());
    }
    final deblockFilterValue = deblockFilter;
    if (deblockFilterValue != null) {
      map['deblockFilter'] = deblockFilterValue;
    }
    final denoiseFilterValue = denoiseFilter;
    if (denoiseFilterValue != null) {
      map['denoiseFilter'] = denoiseFilterValue;
    }
    final filterStrengthValue = filterStrength;
    if (filterStrengthValue != null) {
      map['filterStrength'] = filterStrengthValue;
    }
    final inputFilterValue = inputFilter;
    if (inputFilterValue != null) {
      map['inputFilter'] = inputFilterValue;
    }
    final networkInputSettingsValue = networkInputSettings;
    if (networkInputSettingsValue != null) {
      map['networkInputSettings'] = networkInputSettingsValue.toMap();
    }
    final scte35PidValue = scte35Pid;
    if (scte35PidValue != null) {
      map['scte35Pid'] = scte35PidValue;
    }
    final smpte2038DataPreferenceValue = smpte2038DataPreference;
    if (smpte2038DataPreferenceValue != null) {
      map['smpte2038DataPreference'] = smpte2038DataPreferenceValue;
    }
    final sourceEndBehaviorValue = sourceEndBehavior;
    if (sourceEndBehaviorValue != null) {
      map['sourceEndBehavior'] = sourceEndBehaviorValue;
    }
    final videoSelectorValue = videoSelector;
    if (videoSelectorValue != null) {
      map['videoSelector'] = videoSelectorValue.toMap();
    }
    return map;
  }

  factory ChannelInputAttachmentInputSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettings(
      audioSelectors: map['audioSelectors'] == null
          ? null
          : pulumi.Input.decodeList<
                  ChannelInputAttachmentInputSettingsAudioSelector>(
              map['audioSelectors'],
              (value) =>
                  ChannelInputAttachmentInputSettingsAudioSelector.fromMap(
                      (value as Map).cast<String, dynamic>())),
      captionSelectors: map['captionSelectors'] == null
          ? null
          : pulumi.Input.decodeList<
                  ChannelInputAttachmentInputSettingsCaptionSelector>(
              map['captionSelectors'],
              (value) =>
                  ChannelInputAttachmentInputSettingsCaptionSelector.fromMap(
                      (value as Map).cast<String, dynamic>())),
      deblockFilter:
          map['deblockFilter'] == null ? null : map['deblockFilter'] as String,
      denoiseFilter:
          map['denoiseFilter'] == null ? null : map['denoiseFilter'] as String,
      filterStrength:
          map['filterStrength'] == null ? null : map['filterStrength'] as int,
      inputFilter:
          map['inputFilter'] == null ? null : map['inputFilter'] as String,
      networkInputSettings: map['networkInputSettings'] == null
          ? null
          : ChannelInputAttachmentInputSettingsNetworkInputSettings.fromMap(
              (map['networkInputSettings'] as Map).cast<String, dynamic>()),
      scte35Pid: map['scte35Pid'] == null ? null : map['scte35Pid'] as int,
      smpte2038DataPreference: map['smpte2038DataPreference'] == null
          ? null
          : map['smpte2038DataPreference'] as String,
      sourceEndBehavior: map['sourceEndBehavior'] == null
          ? null
          : map['sourceEndBehavior'] as String,
      videoSelector: map['videoSelector'] == null
          ? null
          : ChannelInputAttachmentInputSettingsVideoSelector.fromMap(
              (map['videoSelector'] as Map).cast<String, dynamic>()),
    );
  }
}
