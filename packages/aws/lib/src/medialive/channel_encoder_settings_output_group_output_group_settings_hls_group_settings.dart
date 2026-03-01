// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_caption_language_mapping.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_destination.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_hls_cdn_setting.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_key_provider_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings {
  /// The ad marker type for this output group.
  final List<String>? adMarkers;
  final String? baseUrlContent;
  final String? baseUrlContent1;
  final String? baseUrlManifest;
  final String? baseUrlManifest1;
  final List<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping>? captionLanguageMappings;
  final String? captionLanguageSetting;
  final String? clientCache;
  final String? codecSpecification;
  final String? constantIv;
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsDestination destination;
  final String? directoryStructure;
  final String? discontinuityTags;
  final String? encryptionType;
  final List<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting>? hlsCdnSettings;
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
  final ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings? keyProviderSettings;
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
      'captionLanguageMappings': ?captionLanguageMappings == null ? null : pulumi.Input.encodeList<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping, Map<String, dynamic>>(captionLanguageMappings!, (value) => value.toMap()),
      'captionLanguageSetting': ?captionLanguageSetting,
      'clientCache': ?clientCache,
      'codecSpecification': ?codecSpecification,
      'constantIv': ?constantIv,
      'destination': destination.toMap(),
      'directoryStructure': ?directoryStructure,
      'discontinuityTags': ?discontinuityTags,
      'encryptionType': ?encryptionType,
      'hlsCdnSettings': ?hlsCdnSettings == null ? null : pulumi.Input.encodeList<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting, Map<String, dynamic>>(hlsCdnSettings!, (value) => value.toMap()),
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
      'keyProviderSettings': ?keyProviderSettings == null ? null : keyProviderSettings!.toMap(),
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
      adMarkers: map['adMarkers'] == null ? null : (map['adMarkers'] as List).cast<String>(),
      baseUrlContent: map['baseUrlContent'] == null ? null : map['baseUrlContent'] as String,
      baseUrlContent1: map['baseUrlContent1'] == null ? null : map['baseUrlContent1'] as String,
      baseUrlManifest: map['baseUrlManifest'] == null ? null : map['baseUrlManifest'] as String,
      baseUrlManifest1: map['baseUrlManifest1'] == null ? null : map['baseUrlManifest1'] as String,
      captionLanguageMappings: map['captionLanguageMappings'] == null ? null : pulumi.Input.decodeList<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping>(map['captionLanguageMappings'], (value) => ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping.fromMap((value as Map).cast<String, dynamic>())),
      captionLanguageSetting: map['captionLanguageSetting'] == null ? null : map['captionLanguageSetting'] as String,
      clientCache: map['clientCache'] == null ? null : map['clientCache'] as String,
      codecSpecification: map['codecSpecification'] == null ? null : map['codecSpecification'] as String,
      constantIv: map['constantIv'] == null ? null : map['constantIv'] as String,
      destination: ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsDestination.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      directoryStructure: map['directoryStructure'] == null ? null : map['directoryStructure'] as String,
      discontinuityTags: map['discontinuityTags'] == null ? null : map['discontinuityTags'] as String,
      encryptionType: map['encryptionType'] == null ? null : map['encryptionType'] as String,
      hlsCdnSettings: map['hlsCdnSettings'] == null ? null : pulumi.Input.decodeList<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting>(map['hlsCdnSettings'], (value) => ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting.fromMap((value as Map).cast<String, dynamic>())),
      hlsId3SegmentTagging: map['hlsId3SegmentTagging'] == null ? null : map['hlsId3SegmentTagging'] as String,
      iframeOnlyPlaylists: map['iframeOnlyPlaylists'] == null ? null : map['iframeOnlyPlaylists'] as String,
      incompleteSegmentBehavior: map['incompleteSegmentBehavior'] == null ? null : map['incompleteSegmentBehavior'] as String,
      indexNSegments: map['indexNSegments'] == null ? null : map['indexNSegments'] as int,
      inputLossAction: map['inputLossAction'] == null ? null : map['inputLossAction'] as String,
      ivInManifest: map['ivInManifest'] == null ? null : map['ivInManifest'] as String,
      ivSource: map['ivSource'] == null ? null : map['ivSource'] as String,
      keepSegments: map['keepSegments'] == null ? null : map['keepSegments'] as int,
      keyFormat: map['keyFormat'] == null ? null : map['keyFormat'] as String,
      keyFormatVersions: map['keyFormatVersions'] == null ? null : map['keyFormatVersions'] as String,
      keyProviderSettings: map['keyProviderSettings'] == null ? null : ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings.fromMap((map['keyProviderSettings'] as Map).cast<String, dynamic>()),
      manifestCompression: map['manifestCompression'] == null ? null : map['manifestCompression'] as String,
      manifestDurationFormat: map['manifestDurationFormat'] == null ? null : map['manifestDurationFormat'] as String,
      minSegmentLength: map['minSegmentLength'] == null ? null : map['minSegmentLength'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
      outputSelection: map['outputSelection'] == null ? null : map['outputSelection'] as String,
      programDateTime: map['programDateTime'] == null ? null : map['programDateTime'] as String,
      programDateTimeClock: map['programDateTimeClock'] == null ? null : map['programDateTimeClock'] as String,
      programDateTimePeriod: map['programDateTimePeriod'] == null ? null : map['programDateTimePeriod'] as int,
      redundantManifest: map['redundantManifest'] == null ? null : map['redundantManifest'] as String,
      segmentLength: map['segmentLength'] == null ? null : map['segmentLength'] as int,
      segmentsPerSubdirectory: map['segmentsPerSubdirectory'] == null ? null : map['segmentsPerSubdirectory'] as int,
      streamInfResolution: map['streamInfResolution'] == null ? null : map['streamInfResolution'] as String,
      timedMetadataId3Frame: map['timedMetadataId3Frame'] == null ? null : map['timedMetadataId3Frame'] as String,
      timedMetadataId3Period: map['timedMetadataId3Period'] == null ? null : map['timedMetadataId3Period'] as int,
      timestampDeltaMilliseconds: map['timestampDeltaMilliseconds'] == null ? null : map['timestampDeltaMilliseconds'] as int,
      tsFileMode: map['tsFileMode'] == null ? null : map['tsFileMode'] as String,
    );
  }
}

