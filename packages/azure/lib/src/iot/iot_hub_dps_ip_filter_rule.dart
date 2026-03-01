// ignore_for_file: unused_element, unnecessary_cast


class IotHubDpsIpFilterRule {
  /// The desired action for requests captured by this rule. Possible values are `Accept`, `Reject`
  final String action;
  /// The IP address range in CIDR notation for the rule.
  final String ipMask;
  /// The name of the filter.
  final String name;
  /// Target for requests captured by this rule. Possible values are `all`, `deviceApi` and `serviceApi`.
  final String? target;

  /// Creates a new [IotHubDpsIpFilterRule].
  /// [action] The desired action for requests captured by this rule. Possible values are `Accept`, `Reject`
  /// [ipMask] The IP address range in CIDR notation for the rule.
  /// [name] The name of the filter.
  /// [target] Target for requests captured by this rule. Possible values are `all`, `deviceApi` and `serviceApi`.
  IotHubDpsIpFilterRule({
    required this.action,
    required this.ipMask,
    required this.name,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'ipMask': ipMask,
      'name': name,
      'target': ?target,
    };
  }

  factory IotHubDpsIpFilterRule.fromMap(Map<String, dynamic> map) {
    return IotHubDpsIpFilterRule(
      action: map['action'] as String,
      ipMask: map['ipMask'] as String,
      name: map['name'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

