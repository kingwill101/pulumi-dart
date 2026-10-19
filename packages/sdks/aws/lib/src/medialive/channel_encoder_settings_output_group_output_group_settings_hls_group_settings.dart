// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_caption_language_mapping.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_destination.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_hls_cdn_setting.dart';
import 'channel_encoder_settings_output_group_output_group_settings_hls_group_settings_key_provider_settings.dart';

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings {
  /// List of markers used to insert ad avail markers in the HLS output.
  final pulumi.Input<List<String>?>? adMarkers;
  /// Prepends a value to the URI of each media (segment) file in the manifest.
  final pulumi.Input<String?>? baseUrlContent;
  /// Alternate base URL for content, used for redundant manifest configurations.
  final pulumi.Input<String?>? baseUrlContent1;
  /// Prepends a value to the URI of each variant manifest file in the master manifest.
  final pulumi.Input<String?>? baseUrlManifest;
  /// Alternate base URL for manifests, used for redundant manifest configurations.
  final pulumi.Input<String?>? baseUrlManifest1;
  /// Mapping of up to 4 caption channels to caption languages. See `captionLanguageMappings` Block for details.
  final pulumi.Input<List<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping>?>? captionLanguageMappings;
  /// How audio and caption language setting tags are written in the manifest.
  final pulumi.Input<String?>? captionLanguageSetting;
  /// When set to `disabled`, sets the `#EXT-X-ALLOW-CACHE:no` tag in the manifest.
  final pulumi.Input<String?>? clientCache;
  /// Specification to use for the codec in the manifest.
  final pulumi.Input<String?>? codecSpecification;
  /// 128-bit, 16-byte hex value represented by a 32-character text string, used with the key for encrypting blocks.
  final pulumi.Input<String?>? constantIv;
  /// Place where the segments and manifests are written. See `destination` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsDestination> destination;
  /// Place for the media and manifest files.
  final pulumi.Input<String?>? directoryStructure;
  /// How the `EXT-X-DISCONTINUITY` tags are inserted.
  final pulumi.Input<String?>? discontinuityTags;
  /// Encryption type.
  final pulumi.Input<String?>? encryptionType;
  /// Parameters that control the interactions with the CDN. See `hlsCdnSettings` Block for details.
  final pulumi.Input<List<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting>?>? hlsCdnSettings;
  /// State of HLS ID3 segment tagging.
  final pulumi.Input<String?>? hlsId3SegmentTagging;
  /// When set to `standard`, an I-Frame only playlist is written out for each video output in the output group.
  final pulumi.Input<String?>? iframeOnlyPlaylists;
  /// Behavior of the segment that is in progress at a channel restart or input switch.
  final pulumi.Input<String?>? incompleteSegmentBehavior;
  /// Number of segments to keep in the manifest.
  final pulumi.Input<int?>? indexNSegments;
  /// Parameter that controls output group behavior on an input loss.
  final pulumi.Input<String?>? inputLossAction;
  /// Whether the initialization vector is included in the key method on the segment.
  final pulumi.Input<String?>? ivInManifest;
  /// Whether the initialization vector follows the segment number or is from the group.
  final pulumi.Input<String?>? ivSource;
  /// Number of segments to retain in the destination directory.
  final pulumi.Input<int?>? keepSegments;
  /// Value for the key URI format in the key method.
  final pulumi.Input<String?>? keyFormat;
  /// Versions of the key format in the key method.
  final pulumi.Input<String?>? keyFormatVersions;
  /// Key provider settings. See `keyProviderSettings` Block for details.
  final pulumi.Input<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings?>? keyProviderSettings;
  /// Whether the manifest is compressed with gzip.
  final pulumi.Input<String?>? manifestCompression;
  /// Format of the segment duration in the manifest.
  final pulumi.Input<String?>? manifestDurationFormat;
  /// Minimum length, in seconds, for each segment.
  final pulumi.Input<int?>? minSegmentLength;
  /// HLS mode.
  final pulumi.Input<String?>? mode;
  /// Generation of the manifest and segments or only variant manifests.
  final pulumi.Input<String?>? outputSelection;
  /// Whether to include an `EXT-X-PROGRAM-DATE-TIME` tag.
  final pulumi.Input<String?>? programDateTime;
  /// Clock source for the `EXT-X-PROGRAM-DATE-TIME` tag.
  final pulumi.Input<String?>? programDateTimeClock;
  /// Period, in seconds, between `EXT-X-PROGRAM-DATE-TIME` tags.
  final pulumi.Input<int?>? programDateTimePeriod;
  /// When set to `enabled`, writes a secondary manifest for each output group.
  final pulumi.Input<String?>? redundantManifest;
  /// Length, in seconds, of each segment.
  final pulumi.Input<int?>? segmentLength;
  /// Number of segments to write to a subdirectory before starting a new one.
  final pulumi.Input<int?>? segmentsPerSubdirectory;
  /// Whether to include the resolution in the `EXT-X-STREAM-INF` tag.
  final pulumi.Input<String?>? streamInfResolution;
  /// ID3 frame used for timed metadata.
  final pulumi.Input<String?>? timedMetadataId3Frame;
  /// Period, in seconds, between ID3 frames for timed metadata.
  final pulumi.Input<int?>? timedMetadataId3Period;
  /// Value, in milliseconds, to offset the program date time from the input timestamp.
  final pulumi.Input<int?>? timestampDeltaMilliseconds;
  /// Whether segments are placed in subdirectories.
  final pulumi.Input<String?>? tsFileMode;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings].
  /// [adMarkers] List of markers used to insert ad avail markers in the HLS output.
  /// [baseUrlContent] Prepends a value to the URI of each media (segment) file in the manifest.
  /// [baseUrlContent1] Alternate base URL for content, used for redundant manifest configurations.
  /// [baseUrlManifest] Prepends a value to the URI of each variant manifest file in the master manifest.
  /// [baseUrlManifest1] Alternate base URL for manifests, used for redundant manifest configurations.
  /// [captionLanguageMappings] Mapping of up to 4 caption channels to caption languages. See `captionLanguageMappings` Block for details.
  /// [captionLanguageSetting] How audio and caption language setting tags are written in the manifest.
  /// [clientCache] When set to `disabled`, sets the `#EXT-X-ALLOW-CACHE:no` tag in the manifest.
  /// [codecSpecification] Specification to use for the codec in the manifest.
  /// [constantIv] 128-bit, 16-byte hex value represented by a 32-character text string, used with the key for encrypting blocks.
  /// [destination] Place where the segments and manifests are written. See `destination` Block for details.
  /// [directoryStructure] Place for the media and manifest files.
  /// [discontinuityTags] How the `EXT-X-DISCONTINUITY` tags are inserted.
  /// [encryptionType] Encryption type.
  /// [hlsCdnSettings] Parameters that control the interactions with the CDN. See `hlsCdnSettings` Block for details.
  /// [hlsId3SegmentTagging] State of HLS ID3 segment tagging.
  /// [iframeOnlyPlaylists] When set to `standard`, an I-Frame only playlist is written out for each video output in the output group.
  /// [incompleteSegmentBehavior] Behavior of the segment that is in progress at a channel restart or input switch.
  /// [indexNSegments] Number of segments to keep in the manifest.
  /// [inputLossAction] Parameter that controls output group behavior on an input loss.
  /// [ivInManifest] Whether the initialization vector is included in the key method on the segment.
  /// [ivSource] Whether the initialization vector follows the segment number or is from the group.
  /// [keepSegments] Number of segments to retain in the destination directory.
  /// [keyFormat] Value for the key URI format in the key method.
  /// [keyFormatVersions] Versions of the key format in the key method.
  /// [keyProviderSettings] Key provider settings. See `keyProviderSettings` Block for details.
  /// [manifestCompression] Whether the manifest is compressed with gzip.
  /// [manifestDurationFormat] Format of the segment duration in the manifest.
  /// [minSegmentLength] Minimum length, in seconds, for each segment.
  /// [mode] HLS mode.
  /// [outputSelection] Generation of the manifest and segments or only variant manifests.
  /// [programDateTime] Whether to include an `EXT-X-PROGRAM-DATE-TIME` tag.
  /// [programDateTimeClock] Clock source for the `EXT-X-PROGRAM-DATE-TIME` tag.
  /// [programDateTimePeriod] Period, in seconds, between `EXT-X-PROGRAM-DATE-TIME` tags.
  /// [redundantManifest] When set to `enabled`, writes a secondary manifest for each output group.
  /// [segmentLength] Length, in seconds, of each segment.
  /// [segmentsPerSubdirectory] Number of segments to write to a subdirectory before starting a new one.
  /// [streamInfResolution] Whether to include the resolution in the `EXT-X-STREAM-INF` tag.
  /// [timedMetadataId3Frame] ID3 frame used for timed metadata.
  /// [timedMetadataId3Period] Period, in seconds, between ID3 frames for timed metadata.
  /// [timestampDeltaMilliseconds] Value, in milliseconds, to offset the program date time from the input timestamp.
  /// [tsFileMode] Whether segments are placed in subdirectories.
  const ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings({
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
      adMarkers: (() { final guardedValue = map['adMarkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      baseUrlContent: (() { final guardedValue = map['baseUrlContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baseUrlContent1: (() { final guardedValue = map['baseUrlContent1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baseUrlManifest: (() { final guardedValue = map['baseUrlManifest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baseUrlManifest1: (() { final guardedValue = map['baseUrlManifest1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      captionLanguageMappings: (() { final guardedValue = map['captionLanguageMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping>(guardedValue, (value) => ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      captionLanguageSetting: (() { final guardedValue = map['captionLanguageSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCache: (() { final guardedValue = map['clientCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codecSpecification: (() { final guardedValue = map['codecSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      constantIv: (() { final guardedValue = map['constantIv']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      directoryStructure: (() { final guardedValue = map['directoryStructure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discontinuityTags: (() { final guardedValue = map['discontinuityTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionType: (() { final guardedValue = map['encryptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hlsCdnSettings: (() { final guardedValue = map['hlsCdnSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting>(guardedValue, (value) => ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hlsId3SegmentTagging: (() { final guardedValue = map['hlsId3SegmentTagging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iframeOnlyPlaylists: (() { final guardedValue = map['iframeOnlyPlaylists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      incompleteSegmentBehavior: (() { final guardedValue = map['incompleteSegmentBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexNSegments: (() { final guardedValue = map['indexNSegments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      inputLossAction: (() { final guardedValue = map['inputLossAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ivInManifest: (() { final guardedValue = map['ivInManifest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ivSource: (() { final guardedValue = map['ivSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keepSegments: (() { final guardedValue = map['keepSegments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      keyFormat: (() { final guardedValue = map['keyFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyFormatVersions: (() { final guardedValue = map['keyFormatVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyProviderSettings: (() { final guardedValue = map['keyProviderSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      manifestCompression: (() { final guardedValue = map['manifestCompression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manifestDurationFormat: (() { final guardedValue = map['manifestDurationFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minSegmentLength: (() { final guardedValue = map['minSegmentLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputSelection: (() { final guardedValue = map['outputSelection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      programDateTime: (() { final guardedValue = map['programDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      programDateTimeClock: (() { final guardedValue = map['programDateTimeClock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      programDateTimePeriod: (() { final guardedValue = map['programDateTimePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      redundantManifest: (() { final guardedValue = map['redundantManifest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentLength: (() { final guardedValue = map['segmentLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      segmentsPerSubdirectory: (() { final guardedValue = map['segmentsPerSubdirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      streamInfResolution: (() { final guardedValue = map['streamInfResolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timedMetadataId3Frame: (() { final guardedValue = map['timedMetadataId3Frame']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timedMetadataId3Period: (() { final guardedValue = map['timedMetadataId3Period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timestampDeltaMilliseconds: (() { final guardedValue = map['timestampDeltaMilliseconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      tsFileMode: (() { final guardedValue = map['tsFileMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
