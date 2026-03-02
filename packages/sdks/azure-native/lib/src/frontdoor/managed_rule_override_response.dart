// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rule_exclusion_response.dart';

/// Defines a managed rule group override setting.
class ManagedRuleOverrideResponse {
  /// Describes the override action to be applied when rule matches.
  final pulumi.Input<String>? action;
  /// Describes if the managed rule is in enabled or disabled state. Defaults to Disabled if not specified.
  final pulumi.Input<String>? enabledState;
  /// Describes the exclusions that are applied to this specific rule.
  final pulumi.Input<List<ManagedRuleExclusionResponse>>? exclusions;
  /// Identifier for the managed rule.
  final pulumi.Input<String> ruleId;

  /// Creates a new [ManagedRuleOverrideResponse].
  /// [action] Describes the override action to be applied when rule matches.
  /// [enabledState] Describes if the managed rule is in enabled or disabled state. Defaults to Disabled if not specified.
  /// [exclusions] Describes the exclusions that are applied to this specific rule.
  /// [ruleId] Identifier for the managed rule.
  ManagedRuleOverrideResponse({
    this.action,
    this.enabledState,
    this.exclusions,
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'enabledState': ?enabledState,
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<ManagedRuleExclusionResponse>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<ManagedRuleExclusionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleId': ruleId,
    };
  }

  factory ManagedRuleOverrideResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRuleOverrideResponse(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      enabledState: map['enabledState'] == null ? null : (map['enabledState']! as String).input(),
      exclusions: map['exclusions'] == null ? null : (pulumi.Input.decodeList<ManagedRuleExclusionResponse>(map['exclusions']!, (value) => ManagedRuleExclusionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleId: (map['ruleId'] as String).input(),
    );
  }
}

