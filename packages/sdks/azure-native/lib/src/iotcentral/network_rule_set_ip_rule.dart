// ignore_for_file: unused_element, unnecessary_cast


/// An object for an IP range that will be allowed access.
class NetworkRuleSetIpRule {
  /// The readable name of the IP rule.
  final String? filterName;
  /// The CIDR block defining the IP range.
  final String? ipMask;

  /// Creates a new [NetworkRuleSetIpRule].
  /// [filterName] The readable name of the IP rule.
  /// [ipMask] The CIDR block defining the IP range.
  NetworkRuleSetIpRule({
    this.filterName,
    this.ipMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterName': ?filterName,
      'ipMask': ?ipMask,
    };
  }

  factory NetworkRuleSetIpRule.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSetIpRule(
      filterName: map['filterName'] == null ? null : map['filterName'] as String,
      ipMask: map['ipMask'] == null ? null : map['ipMask'] as String,
    );
  }
}

