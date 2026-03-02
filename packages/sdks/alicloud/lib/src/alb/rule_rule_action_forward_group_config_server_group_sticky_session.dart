// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleRuleActionForwardGroupConfigServerGroupStickySession {
  /// Whether to enable session persistence.
  final pulumi.Input<bool>? enabled;
  /// The timeout period. Unit: seconds. Valid values: `1` to `86400`. Default value: `1000`.
  final pulumi.Input<int>? timeout;

  /// Creates a new [RuleRuleActionForwardGroupConfigServerGroupStickySession].
  /// [enabled] Whether to enable session persistence.
  /// [timeout] The timeout period. Unit: seconds. Valid values: `1` to `86400`. Default value: `1000`.
  RuleRuleActionForwardGroupConfigServerGroupStickySession({
    this.enabled,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'timeout': ?timeout,
    };
  }

  factory RuleRuleActionForwardGroupConfigServerGroupStickySession.fromMap(Map<String, dynamic> map) {
    return RuleRuleActionForwardGroupConfigServerGroupStickySession(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as int).input(),
    );
  }
}

