// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AggregateCompliancePackConfigRuleId {
  /// The rule ID of Aggregate Config Rule.
  final pulumi.Input<String>? configRuleId;

  /// Creates a new [AggregateCompliancePackConfigRuleId].
  /// [configRuleId] The rule ID of Aggregate Config Rule.
  const AggregateCompliancePackConfigRuleId({
    this.configRuleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configRuleId': ?configRuleId,
    };
  }

  factory AggregateCompliancePackConfigRuleId.fromMap(Map<String, dynamic> map) {
    return AggregateCompliancePackConfigRuleId(
      configRuleId: (() { final guardedValue = map['configRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

