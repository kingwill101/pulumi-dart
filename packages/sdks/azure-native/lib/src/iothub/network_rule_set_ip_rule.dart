// ignore_for_file: unused_element, unnecessary_cast


/// IP Rule to be applied as part of Network Rule Set
class NetworkRuleSetIpRule {
  /// IP Filter Action
  final String? action;
  /// Name of the IP filter rule.
  final String filterName;
  /// A string that contains the IP address range in CIDR notation for the rule.
  final String ipMask;

  /// Creates a new [NetworkRuleSetIpRule].
  /// [action] IP Filter Action
  /// [filterName] Name of the IP filter rule.
  /// [ipMask] A string that contains the IP address range in CIDR notation for the rule.
  NetworkRuleSetIpRule({
    this.action,
    required this.filterName,
    required this.ipMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'filterName': filterName,
      'ipMask': ipMask,
    };
  }

  factory NetworkRuleSetIpRule.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSetIpRule(
      action: map['action'] == null ? null : map['action'] as String,
      filterName: map['filterName'] as String,
      ipMask: map['ipMask'] as String,
    );
  }
}

