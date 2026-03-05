// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_group_override_response.dart';

/// Defines a managed rule set.
class ManagedRuleSetResponse {
  /// Verizon only : If the rule set supports anomaly detection mode, this describes the threshold for blocking requests.
  final pulumi.Input<int>? anomalyScore;
  /// Defines the rule overrides to apply to the rule set.
  final pulumi.Input<List<ManagedRuleGroupOverrideResponse>>? ruleGroupOverrides;
  /// Defines the rule set type to use.
  final pulumi.Input<String> ruleSetType;
  /// Defines the version of the rule set to use.
  final pulumi.Input<String> ruleSetVersion;

  /// Creates a new [ManagedRuleSetResponse].
  /// [anomalyScore] Verizon only : If the rule set supports anomaly detection mode, this describes the threshold for blocking requests.
  /// [ruleGroupOverrides] Defines the rule overrides to apply to the rule set.
  /// [ruleSetType] Defines the rule set type to use.
  /// [ruleSetVersion] Defines the version of the rule set to use.
  ManagedRuleSetResponse({
    this.anomalyScore,
    this.ruleGroupOverrides,
    required this.ruleSetType,
    required this.ruleSetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anomalyScore': ?anomalyScore,
      'ruleGroupOverrides': ?pulumi.Input.mapOptionalInputValue<List<ManagedRuleGroupOverrideResponse>, List<Map<String, dynamic>>>(ruleGroupOverrides, (value) => pulumi.Input.encodeList<ManagedRuleGroupOverrideResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleSetType': ruleSetType,
      'ruleSetVersion': ruleSetVersion,
    };
  }

  factory ManagedRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRuleSetResponse(
      anomalyScore: (() { final guardedValue = map['anomalyScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ruleGroupOverrides: (() { final guardedValue = map['ruleGroupOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedRuleGroupOverrideResponse>(guardedValue, (value) => ManagedRuleGroupOverrideResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ruleSetType: pulumi.Input.fromValue(map['ruleSetType'] as String),
      ruleSetVersion: pulumi.Input.fromValue(map['ruleSetVersion'] as String),
    );
  }
}

