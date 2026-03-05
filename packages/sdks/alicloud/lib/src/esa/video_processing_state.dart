// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VideoProcessing resources.
class VideoProcessingState {
  /// Config Id
  final pulumi.Input<int>? configId;
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
  final pulumi.Input<String>? siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int>? siteVersion;
  /// Drag and drop the play function switch. Value range:
  final pulumi.Input<String>? videoSeekEnable;

  /// Creates a new [VideoProcessingState].
  /// [configId] Config Id
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
  VideoProcessingState({
    this.configId,
    this.flvSeekEnd,
    this.flvSeekStart,
    this.flvVideoSeekMode,
    this.mp4SeekEnd,
    this.mp4SeekStart,
    this.rule,
    this.ruleEnable,
    this.ruleName,
    this.sequence,
    this.siteId,
    this.siteVersion,
    this.videoSeekEnable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'flvSeekEnd': ?flvSeekEnd,
      'flvSeekStart': ?flvSeekStart,
      'flvVideoSeekMode': ?flvVideoSeekMode,
      'mp4SeekEnd': ?mp4SeekEnd,
      'mp4SeekStart': ?mp4SeekStart,
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'siteId': ?siteId,
      'siteVersion': ?siteVersion,
      'videoSeekEnable': ?videoSeekEnable,
    };
  }

  factory VideoProcessingState.fromMap(Map<String, dynamic> map) {
    return VideoProcessingState(
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      flvSeekEnd: (() { final guardedValue = map['flvSeekEnd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flvSeekStart: (() { final guardedValue = map['flvSeekStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flvVideoSeekMode: (() { final guardedValue = map['flvVideoSeekMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mp4SeekEnd: (() { final guardedValue = map['mp4SeekEnd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mp4SeekStart: (() { final guardedValue = map['mp4SeekStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleEnable: (() { final guardedValue = map['ruleEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sequence: (() { final guardedValue = map['sequence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteVersion: (() { final guardedValue = map['siteVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      videoSeekEnable: (() { final guardedValue = map['videoSeekEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

