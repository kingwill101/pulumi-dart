// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_video_processing_video_processing_args_doc}
/// The set of arguments for VideoProcessing.
/// {@endtemplate}
/// {@macro pulumi_esa_video_processing_video_processing_args_doc}
class VideoProcessingArgs {
  /// Custom FLV end parameters.
  final pulumi.Input<String>? flvSeekEnd;
  /// Custom FLV start parameters.
  final pulumi.Input<String>? flvSeekStart;
  /// FLV drag mode. Value range:
  final pulumi.Input<String>? flvVideoSeekMode;
  /// Custom mp4 end parameters.
  final pulumi.Input<String>? mp4SeekEnd;
  /// Custom mp4 start parameters.
  final pulumi.Input<String>? mp4SeekStart;
  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// - Match all incoming requests: value set to true
  /// - Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\")
  final pulumi.Input<String>? rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  final pulumi.Input<String>? ruleEnable;
  /// Rule name. When adding global configuration, this parameter does not need to be set.
  final pulumi.Input<String>? ruleName;
  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  final pulumi.Input<int>? sequence;
  /// The site ID, which can be obtained by calling the ListSites API.
  final pulumi.Input<String> siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int>? siteVersion;
  /// Drag and drop the play function switch. Value range:
  final pulumi.Input<String>? videoSeekEnable;

  /// Creates a new [VideoProcessingArgs].
  /// [flvSeekEnd] Custom FLV end parameters.
  /// [flvSeekStart] Custom FLV start parameters.
  /// [flvVideoSeekMode] FLV drag mode. Value range:
  /// [mp4SeekEnd] Custom mp4 end parameters.
  /// [mp4SeekStart] Custom mp4 start parameters.
  /// [rule] Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// [ruleEnable] Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// [ruleName] Rule name. When adding global configuration, this parameter does not need to be set.
  /// [sequence] The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  /// [siteId] The site ID, which can be obtained by calling the ListSites API.
  /// [siteVersion] The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  /// [videoSeekEnable] Drag and drop the play function switch. Value range:
  VideoProcessingArgs({
    this.flvSeekEnd,
    this.flvSeekStart,
    this.flvVideoSeekMode,
    this.mp4SeekEnd,
    this.mp4SeekStart,
    this.rule,
    this.ruleEnable,
    this.ruleName,
    this.sequence,
    required this.siteId,
    this.siteVersion,
    this.videoSeekEnable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flvSeekEnd': ?flvSeekEnd,
      'flvSeekStart': ?flvSeekStart,
      'flvVideoSeekMode': ?flvVideoSeekMode,
      'mp4SeekEnd': ?mp4SeekEnd,
      'mp4SeekStart': ?mp4SeekStart,
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'siteId': siteId,
      'siteVersion': ?siteVersion,
      'videoSeekEnable': ?videoSeekEnable,
    };
  }

  factory VideoProcessingArgs.fromMap(Map<String, dynamic> map) {
    return VideoProcessingArgs(
      flvSeekEnd: map['flvSeekEnd'] == null ? null : (map['flvSeekEnd'] as String).input(),
      flvSeekStart: map['flvSeekStart'] == null ? null : (map['flvSeekStart'] as String).input(),
      flvVideoSeekMode: map['flvVideoSeekMode'] == null ? null : (map['flvVideoSeekMode'] as String).input(),
      mp4SeekEnd: map['mp4SeekEnd'] == null ? null : (map['mp4SeekEnd'] as String).input(),
      mp4SeekStart: map['mp4SeekStart'] == null ? null : (map['mp4SeekStart'] as String).input(),
      rule: map['rule'] == null ? null : (map['rule'] as String).input(),
      ruleEnable: map['ruleEnable'] == null ? null : (map['ruleEnable'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName'] as String).input(),
      sequence: map['sequence'] == null ? null : (map['sequence'] as int).input(),
      siteId: (map['siteId'] as String).input(),
      siteVersion: map['siteVersion'] == null ? null : (map['siteVersion'] as int).input(),
      videoSeekEnable: map['videoSeekEnable'] == null ? null : (map['videoSeekEnable'] as String).input(),
    );
  }
}

