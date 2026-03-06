// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WafRuleSharedMatchCriteriaCriteriaCriteria {
  final pulumi.Input<String>? matchType;

  /// Creates a new [WafRuleSharedMatchCriteriaCriteriaCriteria].
  /// [matchType] Optional.
  const WafRuleSharedMatchCriteriaCriteriaCriteria({
    this.matchType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchType': ?matchType,
    };
  }

  factory WafRuleSharedMatchCriteriaCriteriaCriteria.fromMap(Map<String, dynamic> map) {
    return WafRuleSharedMatchCriteriaCriteriaCriteria(
      matchType: (() { final guardedValue = map['matchType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

