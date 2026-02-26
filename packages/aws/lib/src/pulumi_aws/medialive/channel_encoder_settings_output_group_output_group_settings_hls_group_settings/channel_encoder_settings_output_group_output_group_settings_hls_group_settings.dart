// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../channel_encoder_settings_output_group_output_group_settings_hls_group_settings_caption_language_mapping/channel_encoder_settings_output_group_output_group_settings_hls_group_settings_caption_language_mapping.dart';
import '../channel_encoder_settings_output_group_output_group_settings_hls_group_settings_destination/channel_encoder_settings_output_group_output_group_settings_hls_group_settings_destination.dart';
import '../channel_encoder_settings_output_group_output_group_settings_hls_group_settings_hls_cdn_setting/channel_encoder_settings_output_group_output_group_settings_hls_group_settings_hls_cdn_setting.dart';
import '../channel_encoder_settings_output_group_output_group_settings_hls_group_settings_key_provider_settings/channel_encoder_settings_output_group_output_group_settings_hls_group_settings_key_provider_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings {
  /// The ad marker type for this output group.
  final List<String>? adMarkers;
  final String? baseUrlContent;
  final String? baseUrlContent1;
  final String? baseUrlManifest;
  final String? baseUrlManifest1;
  final List<
          ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping>?
      captionLanguageMappings;
  final String? captionLanguageSetting;
  final String? clientCache;
  final String? codecSpecification;
  final String? constantIv;
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsDestination
      destination;
  final String? directoryStructure;
  final String? discontinuityTags;
  final String? encryptionType;
  final List<
          ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting>?
      hlsCdnSettings;
  final String? hlsId3SegmentTagging;
  final String? iframeOnlyPlaylists;
  final String? incompleteSegmentBehavior;
  final int? indexNSegments;
  final String? inputLossAction;
  final String? ivInManifest;
  final String? ivSource;
  final int? keepSegments;
  final String? keyFormat;
  final String? keyFormatVersions;
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings?
      keyProviderSettings;
  final String? manifestCompression;
  final String? manifestDurationFormat;
  final int? minSegmentLength;
  final String? mode;
  final String? outputSelection;
  final String? programDateTime;
  final String? programDateTimeClock;
  final int? programDateTimePeriod;
  final String? redundantManifest;
  final int? segmentLength;
  final int? segmentsPerSubdirectory;
  final String? streamInfResolution;

  /// Indicates ID3 frame that has the timecode.
  final String? timedMetadataId3Frame;
  final int? timedMetadataId3Period;
  final int? timestampDeltaMilliseconds;
  final String? tsFileMode;

  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings({
    this.adMarkers,
    this.baseUrlContent,
    this.baseUrlContent1,
    this.baseUrlManifest,
    this.baseUrlManifest1,
    this.captionLanguageMappings,
    this.captionLanguageSetting,
    this.clientCache,
    this.codecSpecification,
    this.constantIv,
    required this.destination,
    this.directoryStructure,
    this.discontinuityTags,
    this.encryptionType,
    this.hlsCdnSettings,
    this.hlsId3SegmentTagging,
    this.iframeOnlyPlaylists,
    this.incompleteSegmentBehavior,
    this.indexNSegments,
    this.inputLossAction,
    this.ivInManifest,
    this.ivSource,
    this.keepSegments,
    this.keyFormat,
    this.keyFormatVersions,
    this.keyProviderSettings,
    this.manifestCompression,
    this.manifestDurationFormat,
    this.minSegmentLength,
    this.mode,
    this.outputSelection,
    this.programDateTime,
    this.programDateTimeClock,
    this.programDateTimePeriod,
    this.redundantManifest,
    this.segmentLength,
    this.segmentsPerSubdirectory,
    this.streamInfResolution,
    this.timedMetadataId3Frame,
    this.timedMetadataId3Period,
    this.timestampDeltaMilliseconds,
    this.tsFileMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adMarkersValue = adMarkers;
    if (adMarkersValue != null) {
      map['adMarkers'] = adMarkersValue;
    }
    final baseUrlContentValue = baseUrlContent;
    if (baseUrlContentValue != null) {
      map['baseUrlContent'] = baseUrlContentValue;
    }
    final baseUrlContent1Value = baseUrlContent1;
    if (baseUrlContent1Value != null) {
      map['baseUrlContent1'] = baseUrlContent1Value;
    }
    final baseUrlManifestValue = baseUrlManifest;
    if (baseUrlManifestValue != null) {
      map['baseUrlManifest'] = baseUrlManifestValue;
    }
    final baseUrlManifest1Value = baseUrlManifest1;
    if (baseUrlManifest1Value != null) {
      map['baseUrlManifest1'] = baseUrlManifest1Value;
    }
    final captionLanguageMappingsValue = captionLanguageMappings;
    if (captionLanguageMappingsValue != null) {
      map['captionLanguageMappings'] = Input.encodeList<
          ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping,
          Map<String,
              dynamic>>(captionLanguageMappingsValue, (value) => value.toMap());
    }
    final captionLanguageSettingValue = captionLanguageSetting;
    if (captionLanguageSettingValue != null) {
      map['captionLanguageSetting'] = captionLanguageSettingValue;
    }
    final clientCacheValue = clientCache;
    if (clientCacheValue != null) {
      map['clientCache'] = clientCacheValue;
    }
    final codecSpecificationValue = codecSpecification;
    if (codecSpecificationValue != null) {
      map['codecSpecification'] = codecSpecificationValue;
    }
    final constantIvValue = constantIv;
    if (constantIvValue != null) {
      map['constantIv'] = constantIvValue;
    }
    map['destination'] = destination.toMap();
    final directoryStructureValue = directoryStructure;
    if (directoryStructureValue != null) {
      map['directoryStructure'] = directoryStructureValue;
    }
    final discontinuityTagsValue = discontinuityTags;
    if (discontinuityTagsValue != null) {
      map['discontinuityTags'] = discontinuityTagsValue;
    }
    final encryptionTypeValue = encryptionType;
    if (encryptionTypeValue != null) {
      map['encryptionType'] = encryptionTypeValue;
    }
    final hlsCdnSettingsValue = hlsCdnSettings;
    if (hlsCdnSettingsValue != null) {
      map['hlsCdnSettings'] = Input.encodeList<
          ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting,
          Map<String, dynamic>>(hlsCdnSettingsValue, (value) => value.toMap());
    }
    final hlsId3SegmentTaggingValue = hlsId3SegmentTagging;
    if (hlsId3SegmentTaggingValue != null) {
      map['hlsId3SegmentTagging'] = hlsId3SegmentTaggingValue;
    }
    final iframeOnlyPlaylistsValue = iframeOnlyPlaylists;
    if (iframeOnlyPlaylistsValue != null) {
      map['iframeOnlyPlaylists'] = iframeOnlyPlaylistsValue;
    }
    final incompleteSegmentBehaviorValue = incompleteSegmentBehavior;
    if (incompleteSegmentBehaviorValue != null) {
      map['incompleteSegmentBehavior'] = incompleteSegmentBehaviorValue;
    }
    final indexNSegmentsValue = indexNSegments;
    if (indexNSegmentsValue != null) {
      map['indexNSegments'] = indexNSegmentsValue;
    }
    final inputLossActionValue = inputLossAction;
    if (inputLossActionValue != null) {
      map['inputLossAction'] = inputLossActionValue;
    }
    final ivInManifestValue = ivInManifest;
    if (ivInManifestValue != null) {
      map['ivInManifest'] = ivInManifestValue;
    }
    final ivSourceValue = ivSource;
    if (ivSourceValue != null) {
      map['ivSource'] = ivSourceValue;
    }
    final keepSegmentsValue = keepSegments;
    if (keepSegmentsValue != null) {
      map['keepSegments'] = keepSegmentsValue;
    }
    final keyFormatValue = keyFormat;
    if (keyFormatValue != null) {
      map['keyFormat'] = keyFormatValue;
    }
    final keyFormatVersionsValue = keyFormatVersions;
    if (keyFormatVersionsValue != null) {
      map['keyFormatVersions'] = keyFormatVersionsValue;
    }
    final keyProviderSettingsValue = keyProviderSettings;
    if (keyProviderSettingsValue != null) {
      map['keyProviderSettings'] = keyProviderSettingsValue.toMap();
    }
    final manifestCompressionValue = manifestCompression;
    if (manifestCompressionValue != null) {
      map['manifestCompression'] = manifestCompressionValue;
    }
    final manifestDurationFormatValue = manifestDurationFormat;
    if (manifestDurationFormatValue != null) {
      map['manifestDurationFormat'] = manifestDurationFormatValue;
    }
    final minSegmentLengthValue = minSegmentLength;
    if (minSegmentLengthValue != null) {
      map['minSegmentLength'] = minSegmentLengthValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final outputSelectionValue = outputSelection;
    if (outputSelectionValue != null) {
      map['outputSelection'] = outputSelectionValue;
    }
    final programDateTimeValue = programDateTime;
    if (programDateTimeValue != null) {
      map['programDateTime'] = programDateTimeValue;
    }
    final programDateTimeClockValue = programDateTimeClock;
    if (programDateTimeClockValue != null) {
      map['programDateTimeClock'] = programDateTimeClockValue;
    }
    final programDateTimePeriodValue = programDateTimePeriod;
    if (programDateTimePeriodValue != null) {
      map['programDateTimePeriod'] = programDateTimePeriodValue;
    }
    final redundantManifestValue = redundantManifest;
    if (redundantManifestValue != null) {
      map['redundantManifest'] = redundantManifestValue;
    }
    final segmentLengthValue = segmentLength;
    if (segmentLengthValue != null) {
      map['segmentLength'] = segmentLengthValue;
    }
    final segmentsPerSubdirectoryValue = segmentsPerSubdirectory;
    if (segmentsPerSubdirectoryValue != null) {
      map['segmentsPerSubdirectory'] = segmentsPerSubdirectoryValue;
    }
    final streamInfResolutionValue = streamInfResolution;
    if (streamInfResolutionValue != null) {
      map['streamInfResolution'] = streamInfResolutionValue;
    }
    final timedMetadataId3FrameValue = timedMetadataId3Frame;
    if (timedMetadataId3FrameValue != null) {
      map['timedMetadataId3Frame'] = timedMetadataId3FrameValue;
    }
    final timedMetadataId3PeriodValue = timedMetadataId3Period;
    if (timedMetadataId3PeriodValue != null) {
      map['timedMetadataId3Period'] = timedMetadataId3PeriodValue;
    }
    final timestampDeltaMillisecondsValue = timestampDeltaMilliseconds;
    if (timestampDeltaMillisecondsValue != null) {
      map['timestampDeltaMilliseconds'] = timestampDeltaMillisecondsValue;
    }
    final tsFileModeValue = tsFileMode;
    if (tsFileModeValue != null) {
      map['tsFileMode'] = tsFileModeValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings(
      adMarkers: map['adMarkers'] == null
          ? null
          : (map['adMarkers'] as List).cast<String>(),
      baseUrlContent: map['baseUrlContent'] == null
          ? null
          : map['baseUrlContent'] as String,
      baseUrlContent1: map['baseUrlContent1'] == null
          ? null
          : map['baseUrlContent1'] as String,
      baseUrlManifest: map['baseUrlManifest'] == null
          ? null
          : map['baseUrlManifest'] as String,
      baseUrlManifest1: map['baseUrlManifest1'] == null
          ? null
          : map['baseUrlManifest1'] as String,
      captionLanguageMappings: map['captionLanguageMappings'] == null
          ? null
          : Input.decodeList<
                  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping>(
              map['captionLanguageMappings'],
              (value) =>
                  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping
                      .fromMap((value as Map).cast<String, dynamic>())),
      captionLanguageSetting: map['captionLanguageSetting'] == null
          ? null
          : map['captionLanguageSetting'] as String,
      clientCache:
          map['clientCache'] == null ? null : map['clientCache'] as String,
      codecSpecification: map['codecSpecification'] == null
          ? null
          : map['codecSpecification'] as String,
      constantIv:
          map['constantIv'] == null ? null : map['constantIv'] as String,
      destination:
          ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsDestination
              .fromMap((map['destination'] as Map).cast<String, dynamic>()),
      directoryStructure: map['directoryStructure'] == null
          ? null
          : map['directoryStructure'] as String,
      discontinuityTags: map['discontinuityTags'] == null
          ? null
          : map['discontinuityTags'] as String,
      encryptionType: map['encryptionType'] == null
          ? null
          : map['encryptionType'] as String,
      hlsCdnSettings: map['hlsCdnSettings'] == null
          ? null
          : Input.decodeList<
                  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting>(
              map['hlsCdnSettings'],
              (value) =>
                  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting
                      .fromMap((value as Map).cast<String, dynamic>())),
      hlsId3SegmentTagging: map['hlsId3SegmentTagging'] == null
          ? null
          : map['hlsId3SegmentTagging'] as String,
      iframeOnlyPlaylists: map['iframeOnlyPlaylists'] == null
          ? null
          : map['iframeOnlyPlaylists'] as String,
      incompleteSegmentBehavior: map['incompleteSegmentBehavior'] == null
          ? null
          : map['incompleteSegmentBehavior'] as String,
      indexNSegments:
          map['indexNSegments'] == null ? null : map['indexNSegments'] as int,
      inputLossAction: map['inputLossAction'] == null
          ? null
          : map['inputLossAction'] as String,
      ivInManifest:
          map['ivInManifest'] == null ? null : map['ivInManifest'] as String,
      ivSource: map['ivSource'] == null ? null : map['ivSource'] as String,
      keepSegments:
          map['keepSegments'] == null ? null : map['keepSegments'] as int,
      keyFormat: map['keyFormat'] == null ? null : map['keyFormat'] as String,
      keyFormatVersions: map['keyFormatVersions'] == null
          ? null
          : map['keyFormatVersions'] as String,
      keyProviderSettings: map['keyProviderSettings'] == null
          ? null
          : ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings
              .fromMap(
                  (map['keyProviderSettings'] as Map).cast<String, dynamic>()),
      manifestCompression: map['manifestCompression'] == null
          ? null
          : map['manifestCompression'] as String,
      manifestDurationFormat: map['manifestDurationFormat'] == null
          ? null
          : map['manifestDurationFormat'] as String,
      minSegmentLength: map['minSegmentLength'] == null
          ? null
          : map['minSegmentLength'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
      outputSelection: map['outputSelection'] == null
          ? null
          : map['outputSelection'] as String,
      programDateTime: map['programDateTime'] == null
          ? null
          : map['programDateTime'] as String,
      programDateTimeClock: map['programDateTimeClock'] == null
          ? null
          : map['programDateTimeClock'] as String,
      programDateTimePeriod: map['programDateTimePeriod'] == null
          ? null
          : map['programDateTimePeriod'] as int,
      redundantManifest: map['redundantManifest'] == null
          ? null
          : map['redundantManifest'] as String,
      segmentLength:
          map['segmentLength'] == null ? null : map['segmentLength'] as int,
      segmentsPerSubdirectory: map['segmentsPerSubdirectory'] == null
          ? null
          : map['segmentsPerSubdirectory'] as int,
      streamInfResolution: map['streamInfResolution'] == null
          ? null
          : map['streamInfResolution'] as String,
      timedMetadataId3Frame: map['timedMetadataId3Frame'] == null
          ? null
          : map['timedMetadataId3Frame'] as String,
      timedMetadataId3Period: map['timedMetadataId3Period'] == null
          ? null
          : map['timedMetadataId3Period'] as int,
      timestampDeltaMilliseconds: map['timestampDeltaMilliseconds'] == null
          ? null
          : map['timestampDeltaMilliseconds'] as int,
      tsFileMode:
          map['tsFileMode'] == null ? null : map['tsFileMode'] as String,
    );
  }
}
