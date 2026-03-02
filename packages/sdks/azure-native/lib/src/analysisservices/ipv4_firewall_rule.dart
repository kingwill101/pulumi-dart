// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The detail of firewall rule.
class IPv4FirewallRule {
  /// The rule name.
  final pulumi.Input<String>? firewallRuleName;
  /// The end range of IPv4.
  final pulumi.Input<String>? rangeEnd;
  /// The start range of IPv4.
  final pulumi.Input<String>? rangeStart;

  /// Creates a new [IPv4FirewallRule].
  /// [firewallRuleName] The rule name.
  /// [rangeEnd] The end range of IPv4.
  /// [rangeStart] The start range of IPv4.
  IPv4FirewallRule({
    this.firewallRuleName,
    this.rangeEnd,
    this.rangeStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallRuleName': ?firewallRuleName,
      'rangeEnd': ?rangeEnd,
      'rangeStart': ?rangeStart,
    };
  }

  factory IPv4FirewallRule.fromMap(Map<String, dynamic> map) {
    return IPv4FirewallRule(
      firewallRuleName: map['firewallRuleName'] == null ? null : (map['firewallRuleName']! as String).input(),
      rangeEnd: map['rangeEnd'] == null ? null : (map['rangeEnd']! as String).input(),
      rangeStart: map['rangeStart'] == null ? null : (map['rangeStart']! as String).input(),
    );
  }
}

