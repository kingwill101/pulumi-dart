// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CompliancePackConfigRuleId {
  /// The rule ID of Config Rule.
  final pulumi.Input<String>? configRuleId;

  /// Creates a new [CompliancePackConfigRuleId].
  /// [configRuleId] The rule ID of Config Rule.
  CompliancePackConfigRuleId({
    this.configRuleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configRuleId': ?configRuleId,
    };
  }

  factory CompliancePackConfigRuleId.fromMap(Map<String, dynamic> map) {
    return CompliancePackConfigRuleId(
      configRuleId: (() { final guardedValue = map['configRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

