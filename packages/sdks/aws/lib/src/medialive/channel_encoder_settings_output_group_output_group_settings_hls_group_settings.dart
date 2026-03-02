// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_caption_language_mapping.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_destination.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_hls_cdn_setting.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_key_provider_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings {
  /// The ad marker type for this output group.
  final pulumi.Input<List<String>>? adMarkers;
  final pulumi.Input<String>? baseUrlContent;
  final pulumi.Input<String>? baseUrlContent1;
  final pulumi.Input<String>? baseUrlManifest;
  final pulumi.Input<String>? baseUrlManifest1;
  final pulumi.Input<List<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping>>? captionLanguageMappings;
  final pulumi.Input<String>? captionLanguageSetting;
  final pulumi.Input<String>? clientCache;
  final pulumi.Input<String>? codecSpecification;
  final pulumi.Input<String>? constantIv;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsDestination> destination;
  final pulumi.Input<String>? directoryStructure;
  final pulumi.Input<String>? discontinuityTags;
  final pulumi.Input<String>? encryptionType;
  final pulumi.Input<List<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting>>? hlsCdnSettings;
  final pulumi.Input<String>? hlsId3SegmentTagging;
  final pulumi.Input<String>? iframeOnlyPlaylists;
  final pulumi.Input<String>? incompleteSegmentBehavior;
  final pulumi.Input<int>? indexNSegments;
  final pulumi.Input<String>? inputLossAction;
  final pulumi.Input<String>? ivInManifest;
  final pulumi.Input<String>? ivSource;
  final pulumi.Input<int>? keepSegments;
  final pulumi.Input<String>? keyFormat;
  final pulumi.Input<String>? keyFormatVersions;
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings>? keyProviderSettings;
  final pulumi.Input<String>? manifestCompression;
  final pulumi.Input<String>? manifestDurationFormat;
  final pulumi.Input<int>? minSegmentLength;
  final pulumi.Input<String>? mode;
  final pulumi.Input<String>? outputSelection;
  final pulumi.Input<String>? programDateTime;
  final pulumi.Input<String>? programDateTimeClock;
  final pulumi.Input<int>? programDateTimePeriod;
  final pulumi.Input<String>? redundantManifest;
  final pulumi.Input<int>? segmentLength;
  final pulumi.Input<int>? segmentsPerSubdirectory;
  final pulumi.Input<String>? streamInfResolution;
  /// Indicates ID3 frame that has the timecode.
  final pulumi.Input<String>? timedMetadataId3Frame;
  final pulumi.Input<int>? timedMetadataId3Period;
  final pulumi.Input<int>? timestampDeltaMilliseconds;
  final pulumi.Input<String>? tsFileMode;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings].
  /// [adMarkers] The ad marker type for this output group.
  /// [baseUrlContent] Optional.
  /// [baseUrlContent1] Optional.
  /// [baseUrlManifest] Optional.
  /// [baseUrlManifest1] Optional.
  /// [captionLanguageMappings] Optional.
  /// [captionLanguageSetting] Optional.
  /// [clientCache] Optional.
  /// [codecSpecification] Optional.
  /// [constantIv] Optional.
  /// [destination] Required.
  /// [directoryStructure] Optional.
  /// [discontinuityTags] Optional.
  /// [encryptionType] Optional.
  /// [hlsCdnSettings] Optional.
  /// [hlsId3SegmentTagging] Optional.
  /// [iframeOnlyPlaylists] Optional.
  /// [incompleteSegmentBehavior] Optional.
  /// [indexNSegments] Optional.
  /// [inputLossAction] Optional.
  /// [ivInManifest] Optional.
  /// [ivSource] Optional.
  /// [keepSegments] Optional.
  /// [keyFormat] Optional.
  /// [keyFormatVersions] Optional.
  /// [keyProviderSettings] Optional.
  /// [manifestCompression] Optional.
  /// [manifestDurationFormat] Optional.
  /// [minSegmentLength] Optional.
  /// [mode] Optional.
  /// [outputSelection] Optional.
  /// [programDateTime] Optional.
  /// [programDateTimeClock] Optional.
  /// [programDateTimePeriod] Optional.
  /// [redundantManifest] Optional.
  /// [segmentLength] Optional.
  /// [segmentsPerSubdirectory] Optional.
  /// [streamInfResolution] Optional.
  /// [timedMetadataId3Frame] Indicates ID3 frame that has the timecode.
  /// [timedMetadataId3Period] Optional.
  /// [timestampDeltaMilliseconds] Optional.
  /// [tsFileMode] Optional.
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
    return <String, dynamic>{
      'adMarkers': ?adMarkers,
      'baseUrlContent': ?baseUrlContent,
      'baseUrlContent1': ?baseUrlContent1,
      'baseUrlManifest': ?baseUrlManifest,
      'baseUrlManifest1': ?baseUrlManifest1,
      'captionLanguageMappings': ?pulumi.Input.mapOptionalInputValue<List<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping>, List<Map<String, dynamic>>>(captionLanguageMappings, (value) => pulumi.Input.encodeList<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'captionLanguageSetting': ?captionLanguageSetting,
      'clientCache': ?clientCache,
      'codecSpecification': ?codecSpecification,
      'constantIv': ?constantIv,
      'destination': pulumi.Input.mapInputValue<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'directoryStructure': ?directoryStructure,
      'discontinuityTags': ?discontinuityTags,
      'encryptionType': ?encryptionType,
      'hlsCdnSettings': ?pulumi.Input.mapOptionalInputValue<List<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting>, List<Map<String, dynamic>>>(hlsCdnSettings, (value) => pulumi.Input.encodeList<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hlsId3SegmentTagging': ?hlsId3SegmentTagging,
      'iframeOnlyPlaylists': ?iframeOnlyPlaylists,
      'incompleteSegmentBehavior': ?incompleteSegmentBehavior,
      'indexNSegments': ?indexNSegments,
      'inputLossAction': ?inputLossAction,
      'ivInManifest': ?ivInManifest,
      'ivSource': ?ivSource,
      'keepSegments': ?keepSegments,
      'keyFormat': ?keyFormat,
      'keyFormatVersions': ?keyFormatVersions,
      'keyProviderSettings': ?pulumi.Input.mapOptionalInputValue<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings, Map<String, dynamic>>(keyProviderSettings, (value) => value.toMap()),
      'manifestCompression': ?manifestCompression,
      'manifestDurationFormat': ?manifestDurationFormat,
      'minSegmentLength': ?minSegmentLength,
      'mode': ?mode,
      'outputSelection': ?outputSelection,
      'programDateTime': ?programDateTime,
      'programDateTimeClock': ?programDateTimeClock,
      'programDateTimePeriod': ?programDateTimePeriod,
      'redundantManifest': ?redundantManifest,
      'segmentLength': ?segmentLength,
      'segmentsPerSubdirectory': ?segmentsPerSubdirectory,
      'streamInfResolution': ?streamInfResolution,
      'timedMetadataId3Frame': ?timedMetadataId3Frame,
      'timedMetadataId3Period': ?timedMetadataId3Period,
      'timestampDeltaMilliseconds': ?timestampDeltaMilliseconds,
      'tsFileMode': ?tsFileMode,
    };
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings(
      adMarkers: map['adMarkers'] == null ? null : ((map['adMarkers'] as List).cast<String>()).input(),
      baseUrlContent: map['baseUrlContent'] == null ? null : (map['baseUrlContent'] as String).input(),
      baseUrlContent1: map['baseUrlContent1'] == null ? null : (map['baseUrlContent1'] as String).input(),
      baseUrlManifest: map['baseUrlManifest'] == null ? null : (map['baseUrlManifest'] as String).input(),
      baseUrlManifest1: map['baseUrlManifest1'] == null ? null : (map['baseUrlManifest1'] as String).input(),
      captionLanguageMappings: map['captionLanguageMappings'] == null ? null : (pulumi.Input.decodeList<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping>(map['captionLanguageMappings'], (value) => ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      captionLanguageSetting: map['captionLanguageSetting'] == null ? null : (map['captionLanguageSetting'] as String).input(),
      clientCache: map['clientCache'] == null ? null : (map['clientCache'] as String).input(),
      codecSpecification: map['codecSpecification'] == null ? null : (map['codecSpecification'] as String).input(),
      constantIv: map['constantIv'] == null ? null : (map['constantIv'] as String).input(),
      destination: (ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsDestination.fromMap((map['destination'] as Map).cast<String, dynamic>())).input(),
      directoryStructure: map['directoryStructure'] == null ? null : (map['directoryStructure'] as String).input(),
      discontinuityTags: map['discontinuityTags'] == null ? null : (map['discontinuityTags'] as String).input(),
      encryptionType: map['encryptionType'] == null ? null : (map['encryptionType'] as String).input(),
      hlsCdnSettings: map['hlsCdnSettings'] == null ? null : (pulumi.Input.decodeList<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting>(map['hlsCdnSettings'], (value) => ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hlsId3SegmentTagging: map['hlsId3SegmentTagging'] == null ? null : (map['hlsId3SegmentTagging'] as String).input(),
      iframeOnlyPlaylists: map['iframeOnlyPlaylists'] == null ? null : (map['iframeOnlyPlaylists'] as String).input(),
      incompleteSegmentBehavior: map['incompleteSegmentBehavior'] == null ? null : (map['incompleteSegmentBehavior'] as String).input(),
      indexNSegments: map['indexNSegments'] == null ? null : (map['indexNSegments'] as int).input(),
      inputLossAction: map['inputLossAction'] == null ? null : (map['inputLossAction'] as String).input(),
      ivInManifest: map['ivInManifest'] == null ? null : (map['ivInManifest'] as String).input(),
      ivSource: map['ivSource'] == null ? null : (map['ivSource'] as String).input(),
      keepSegments: map['keepSegments'] == null ? null : (map['keepSegments'] as int).input(),
      keyFormat: map['keyFormat'] == null ? null : (map['keyFormat'] as String).input(),
      keyFormatVersions: map['keyFormatVersions'] == null ? null : (map['keyFormatVersions'] as String).input(),
      keyProviderSettings: map['keyProviderSettings'] == null ? null : (ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings.fromMap((map['keyProviderSettings'] as Map).cast<String, dynamic>())).input(),
      manifestCompression: map['manifestCompression'] == null ? null : (map['manifestCompression'] as String).input(),
      manifestDurationFormat: map['manifestDurationFormat'] == null ? null : (map['manifestDurationFormat'] as String).input(),
      minSegmentLength: map['minSegmentLength'] == null ? null : (map['minSegmentLength'] as int).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      outputSelection: map['outputSelection'] == null ? null : (map['outputSelection'] as String).input(),
      programDateTime: map['programDateTime'] == null ? null : (map['programDateTime'] as String).input(),
      programDateTimeClock: map['programDateTimeClock'] == null ? null : (map['programDateTimeClock'] as String).input(),
      programDateTimePeriod: map['programDateTimePeriod'] == null ? null : (map['programDateTimePeriod'] as int).input(),
      redundantManifest: map['redundantManifest'] == null ? null : (map['redundantManifest'] as String).input(),
      segmentLength: map['segmentLength'] == null ? null : (map['segmentLength'] as int).input(),
      segmentsPerSubdirectory: map['segmentsPerSubdirectory'] == null ? null : (map['segmentsPerSubdirectory'] as int).input(),
      streamInfResolution: map['streamInfResolution'] == null ? null : (map['streamInfResolution'] as String).input(),
      timedMetadataId3Frame: map['timedMetadataId3Frame'] == null ? null : (map['timedMetadataId3Frame'] as String).input(),
      timedMetadataId3Period: map['timedMetadataId3Period'] == null ? null : (map['timedMetadataId3Period'] as int).input(),
      timestampDeltaMilliseconds: map['timestampDeltaMilliseconds'] == null ? null : (map['timestampDeltaMilliseconds'] as int).input(),
      tsFileMode: map['tsFileMode'] == null ? null : (map['tsFileMode'] as String).input(),
    );
  }
}

