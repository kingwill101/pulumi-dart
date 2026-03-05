// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WafRuleConfigActionsBypass {
  /// The IDs of custom rules to skip.
  final pulumi.Input<List<int>>? customRules;
  /// The IDs of specific managed rules to skip.
  final pulumi.Input<List<int>>? regularRules;
  /// The types of managed rules to skip.
  final pulumi.Input<List<String>>? regularTypes;
  /// The scope that is skipped when requests match conditions defined in the whitelist rule.
  final pulumi.Input<String>? skip;
  /// The rule categories that are skipped when requests match conditions defined in the whitelist rule.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [WafRuleConfigActionsBypass].
  /// [customRules] The IDs of custom rules to skip.
  /// [regularRules] The IDs of specific managed rules to skip.
  /// [regularTypes] The types of managed rules to skip.
  /// [skip] The scope that is skipped when requests match conditions defined in the whitelist rule.
  /// [tags] The rule categories that are skipped when requests match conditions defined in the whitelist rule.
  WafRuleConfigActionsBypass({
    this.customRules,
    this.regularRules,
    this.regularTypes,
    this.skip,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRules': ?customRules,
      'regularRules': ?regularRules,
      'regularTypes': ?regularTypes,
      'skip': ?skip,
      'tags': ?tags,
    };
  }

  factory WafRuleConfigActionsBypass.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigActionsBypass(
      customRules: (() { final guardedValue = map['customRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      regularRules: (() { final guardedValue = map['regularRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      regularTypes: (() { final guardedValue = map['regularTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      skip: (() { final guardedValue = map['skip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

