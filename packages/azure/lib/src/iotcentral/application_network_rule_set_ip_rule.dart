// ignore_for_file: unused_element, unnecessary_cast


class ApplicationNetworkRuleSetIpRule {
  /// The IP address range in CIDR notation for the IP Rule.
  final String ipMask;
  /// The name of the IP Rule
  final String name;

  /// Creates a new [ApplicationNetworkRuleSetIpRule].
  /// [ipMask] The IP address range in CIDR notation for the IP Rule.
  /// [name] The name of the IP Rule
  ApplicationNetworkRuleSetIpRule({
    required this.ipMask,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipMask': ipMask,
      'name': name,
    };
  }

  factory ApplicationNetworkRuleSetIpRule.fromMap(Map<String, dynamic> map) {
    return ApplicationNetworkRuleSetIpRule(
      ipMask: map['ipMask'] as String,
      name: map['name'] as String,
    );
  }
}

