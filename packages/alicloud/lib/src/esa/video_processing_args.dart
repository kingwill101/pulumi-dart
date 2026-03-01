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
    String? flvSeekEnd,
    String? flvSeekStart,
    String? flvVideoSeekMode,
    String? mp4SeekEnd,
    String? mp4SeekStart,
    String? rule,
    String? ruleEnable,
    String? ruleName,
    int? sequence,
    required String siteId,
    int? siteVersion,
    String? videoSeekEnable,
  }) :
      flvSeekEnd = pulumi.Input.asOptionalInput<String>(flvSeekEnd),
      flvSeekStart = pulumi.Input.asOptionalInput<String>(flvSeekStart),
      flvVideoSeekMode = pulumi.Input.asOptionalInput<String>(flvVideoSeekMode),
      mp4SeekEnd = pulumi.Input.asOptionalInput<String>(mp4SeekEnd),
      mp4SeekStart = pulumi.Input.asOptionalInput<String>(mp4SeekStart),
      rule = pulumi.Input.asOptionalInput<String>(rule),
      ruleEnable = pulumi.Input.asOptionalInput<String>(ruleEnable),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      sequence = pulumi.Input.asOptionalInput<int>(sequence),
      siteId = pulumi.Input.asInput<String>(siteId),
      siteVersion = pulumi.Input.asOptionalInput<int>(siteVersion),
      videoSeekEnable = pulumi.Input.asOptionalInput<String>(videoSeekEnable);

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
      flvSeekEnd: map['flvSeekEnd'] == null ? null : map['flvSeekEnd'] as String,
      flvSeekStart: map['flvSeekStart'] == null ? null : map['flvSeekStart'] as String,
      flvVideoSeekMode: map['flvVideoSeekMode'] == null ? null : map['flvVideoSeekMode'] as String,
      mp4SeekEnd: map['mp4SeekEnd'] == null ? null : map['mp4SeekEnd'] as String,
      mp4SeekStart: map['mp4SeekStart'] == null ? null : map['mp4SeekStart'] as String,
      rule: map['rule'] == null ? null : map['rule'] as String,
      ruleEnable: map['ruleEnable'] == null ? null : map['ruleEnable'] as String,
      ruleName: map['ruleName'] == null ? null : map['ruleName'] as String,
      sequence: map['sequence'] == null ? null : map['sequence'] as int,
      siteId: map['siteId'] as String,
      siteVersion: map['siteVersion'] == null ? null : map['siteVersion'] as int,
      videoSeekEnable: map['videoSeekEnable'] == null ? null : map['videoSeekEnable'] as String,
    );
  }
}

