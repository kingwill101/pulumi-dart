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
  final pulumi.Input<
    List<
      ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping
    >
  >?
  captionLanguageMappings;
  final pulumi.Input<String>? captionLanguageSetting;
  final pulumi.Input<String>? clientCache;
  final pulumi.Input<String>? codecSpecification;
  final pulumi.Input<String>? constantIv;
  final pulumi.Input<
    ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsDestination
  >
  destination;
  final pulumi.Input<String>? directoryStructure;
  final pulumi.Input<String>? discontinuityTags;
  final pulumi.Input<String>? encryptionType;
  final pulumi.Input<
    List<
      ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting
    >
  >?
  hlsCdnSettings;
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
  final pulumi.Input<
    ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings
  >?
  keyProviderSettings;
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
      'captionLanguageMappings':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping
            >,
            List<Map<String, dynamic>>
          >(
            captionLanguageMappings,
            (value) =>
                pulumi.Input.encodeList<
                  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'captionLanguageSetting': ?captionLanguageSetting,
      'clientCache': ?clientCache,
      'codecSpecification': ?codecSpecification,
      'constantIv': ?constantIv,
      'destination':
          pulumi.Input.mapInputValue<
            ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsDestination,
            Map<String, dynamic>
          >(destination, (value) => value.toMap()),
      'directoryStructure': ?directoryStructure,
      'discontinuityTags': ?discontinuityTags,
      'encryptionType': ?encryptionType,
      'hlsCdnSettings':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting
            >,
            List<Map<String, dynamic>>
          >(
            hlsCdnSettings,
            (value) =>
                pulumi.Input.encodeList<
                  ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'keyProviderSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings,
            Map<String, dynamic>
          >(keyProviderSettings, (value) => value.toMap()),
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

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettings(
      adMarkers: (() {
        final guardedValue = map['adMarkers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      baseUrlContent: (() {
        final guardedValue = map['baseUrlContent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      baseUrlContent1: (() {
        final guardedValue = map['baseUrlContent1'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      baseUrlManifest: (() {
        final guardedValue = map['baseUrlManifest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      baseUrlManifest1: (() {
        final guardedValue = map['baseUrlManifest1'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      captionLanguageMappings: (() {
        final guardedValue = map['captionLanguageMappings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping
          >(
            guardedValue,
            (value) =>
                ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsCaptionLanguageMapping.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      captionLanguageSetting: (() {
        final guardedValue = map['captionLanguageSetting'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientCache: (() {
        final guardedValue = map['clientCache'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      codecSpecification: (() {
        final guardedValue = map['codecSpecification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      constantIv: (() {
        final guardedValue = map['constantIv'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destination: pulumi.Input.fromValue(
        ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsDestination.fromMap(
          (map['destination']! as Map).cast<String, dynamic>(),
        ),
      ),
      directoryStructure: (() {
        final guardedValue = map['directoryStructure'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      discontinuityTags: (() {
        final guardedValue = map['discontinuityTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionType: (() {
        final guardedValue = map['encryptionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hlsCdnSettings: (() {
        final guardedValue = map['hlsCdnSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting
          >(
            guardedValue,
            (value) =>
                ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsHlsCdnSetting.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      hlsId3SegmentTagging: (() {
        final guardedValue = map['hlsId3SegmentTagging'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iframeOnlyPlaylists: (() {
        final guardedValue = map['iframeOnlyPlaylists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      incompleteSegmentBehavior: (() {
        final guardedValue = map['incompleteSegmentBehavior'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      indexNSegments: (() {
        final guardedValue = map['indexNSegments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      inputLossAction: (() {
        final guardedValue = map['inputLossAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ivInManifest: (() {
        final guardedValue = map['ivInManifest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ivSource: (() {
        final guardedValue = map['ivSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keepSegments: (() {
        final guardedValue = map['keepSegments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      keyFormat: (() {
        final guardedValue = map['keyFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyFormatVersions: (() {
        final guardedValue = map['keyFormatVersions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyProviderSettings: (() {
        final guardedValue = map['keyProviderSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ChannelEncoderSettingsOutputGroupOutputGroupSettingsHlsGroupSettingsKeyProviderSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      manifestCompression: (() {
        final guardedValue = map['manifestCompression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      manifestDurationFormat: (() {
        final guardedValue = map['manifestDurationFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minSegmentLength: (() {
        final guardedValue = map['minSegmentLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputSelection: (() {
        final guardedValue = map['outputSelection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      programDateTime: (() {
        final guardedValue = map['programDateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      programDateTimeClock: (() {
        final guardedValue = map['programDateTimeClock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      programDateTimePeriod: (() {
        final guardedValue = map['programDateTimePeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      redundantManifest: (() {
        final guardedValue = map['redundantManifest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      segmentLength: (() {
        final guardedValue = map['segmentLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      segmentsPerSubdirectory: (() {
        final guardedValue = map['segmentsPerSubdirectory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      streamInfResolution: (() {
        final guardedValue = map['streamInfResolution'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timedMetadataId3Frame: (() {
        final guardedValue = map['timedMetadataId3Frame'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timedMetadataId3Period: (() {
        final guardedValue = map['timedMetadataId3Period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      timestampDeltaMilliseconds: (() {
        final guardedValue = map['timestampDeltaMilliseconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tsFileMode: (() {
        final guardedValue = map['tsFileMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
