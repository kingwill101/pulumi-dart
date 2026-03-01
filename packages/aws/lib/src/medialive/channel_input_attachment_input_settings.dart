// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_input_attachment_input_settings_audio_selector.dart';
import 'channel_input_attachment_input_settings_caption_selector.dart';
import 'channel_input_attachment_input_settings_network_input_settings.dart';
import 'channel_input_attachment_input_settings_video_selector.dart';

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
      'audioSelectors': ?audioSelectors == null
          ? null
          : pulumi.Input.encodeList<
              ChannelInputAttachmentInputSettingsAudioSelector,
              Map<String, dynamic>
            >(audioSelectors!, (value) => value.toMap()),
      'captionSelectors': ?captionSelectors == null
          ? null
          : pulumi.Input.encodeList<
              ChannelInputAttachmentInputSettingsCaptionSelector,
              Map<String, dynamic>
            >(captionSelectors!, (value) => value.toMap()),
      'deblockFilter': ?deblockFilter,
      'denoiseFilter': ?denoiseFilter,
      'filterStrength': ?filterStrength,
      'inputFilter': ?inputFilter,
      'networkInputSettings': ?networkInputSettings == null
          ? null
          : networkInputSettings!.toMap(),
      'scte35Pid': ?scte35Pid,
      'smpte2038DataPreference': ?smpte2038DataPreference,
      'sourceEndBehavior': ?sourceEndBehavior,
      'videoSelector': ?videoSelector == null ? null : videoSelector!.toMap(),
    };
  }

  factory ChannelInputAttachmentInputSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelInputAttachmentInputSettings(
      audioSelectors: map['audioSelectors'] == null
          ? null
          : pulumi.Input.decodeList<
              ChannelInputAttachmentInputSettingsAudioSelector
            >(
              map['audioSelectors'],
              (value) =>
                  ChannelInputAttachmentInputSettingsAudioSelector.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      captionSelectors: map['captionSelectors'] == null
          ? null
          : pulumi.Input.decodeList<
              ChannelInputAttachmentInputSettingsCaptionSelector
            >(
              map['captionSelectors'],
              (value) =>
                  ChannelInputAttachmentInputSettingsCaptionSelector.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      deblockFilter: map['deblockFilter'] == null
          ? null
          : map['deblockFilter'] as String,
      denoiseFilter: map['denoiseFilter'] == null
          ? null
          : map['denoiseFilter'] as String,
      filterStrength: map['filterStrength'] == null
          ? null
          : map['filterStrength'] as int,
      inputFilter: map['inputFilter'] == null
          ? null
          : map['inputFilter'] as String,
      networkInputSettings: map['networkInputSettings'] == null
          ? null
          : ChannelInputAttachmentInputSettingsNetworkInputSettings.fromMap(
              (map['networkInputSettings'] as Map).cast<String, dynamic>(),
            ),
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
              (map['videoSelector'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
