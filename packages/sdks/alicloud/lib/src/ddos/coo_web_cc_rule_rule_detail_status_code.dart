// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CooWebCcRuleRuleDetailStatusCode {
  /// Status code. The value range is `100` to `599`:
  final pulumi.Input<int> code;
  /// When the ratio is not used, the enforcement action is triggered only when the corresponding status code reaches `CountThreshold`. The value range is `2` to `50000`.
  final pulumi.Input<int>? countThreshold;
  /// Whether the rule is enabled. Valid values:
  final pulumi.Input<bool> enabled;
  /// When the ratio is used, the enforcement action is triggered only when the corresponding status code reaches `RatioThreshold`. The value range is `1` to `100`.
  final pulumi.Input<int>? ratioThreshold;
  /// Whether to use a ratio:
  final pulumi.Input<bool> useRatio;

  /// Creates a new [CooWebCcRuleRuleDetailStatusCode].
  /// [code] Status code. The value range is `100` to `599`:
  /// [countThreshold] When the ratio is not used, the enforcement action is triggered only when the corresponding status code reaches `CountThreshold`. The value range is `2` to `50000`.
  /// [enabled] Whether the rule is enabled. Valid values:
  /// [ratioThreshold] When the ratio is used, the enforcement action is triggered only when the corresponding status code reaches `RatioThreshold`. The value range is `1` to `100`.
  /// [useRatio] Whether to use a ratio:
  CooWebCcRuleRuleDetailStatusCode({
    required this.code,
    this.countThreshold,
    required this.enabled,
    this.ratioThreshold,
    required this.useRatio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'countThreshold': ?countThreshold,
      'enabled': enabled,
      'ratioThreshold': ?ratioThreshold,
      'useRatio': useRatio,
    };
  }

  factory CooWebCcRuleRuleDetailStatusCode.fromMap(Map<String, dynamic> map) {
    return CooWebCcRuleRuleDetailStatusCode(
      code: (map['code'] as int).input(),
      countThreshold: map['countThreshold'] == null ? null : (map['countThreshold'] as int).input(),
      enabled: (map['enabled'] as bool).input(),
      ratioThreshold: map['ratioThreshold'] == null ? null : (map['ratioThreshold'] as int).input(),
      useRatio: (map['useRatio'] as bool).input(),
    );
  }
}

