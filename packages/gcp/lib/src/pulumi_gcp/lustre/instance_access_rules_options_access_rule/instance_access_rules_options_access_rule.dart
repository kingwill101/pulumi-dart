// ignore_for_file: unused_element, unnecessary_cast

class InstanceAccessRulesOptionsAccessRule {
  /// An array of IP address strings or CIDR ranges that this rule applies to.
  final List<String> ipAddressRanges;

  /// A unique identifier for the access rule.
  final String name;

  /// The squash mode for this specific rule. Currently, only "NO_SQUASH"
  /// is supported for exceptions.
  /// Possible values are: `NO_SQUASH`.
  final String squashMode;

  InstanceAccessRulesOptionsAccessRule({
    required this.ipAddressRanges,
    required this.name,
    required this.squashMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddressRanges'] = ipAddressRanges;
    map['name'] = name;
    map['squashMode'] = squashMode;
    return map;
  }

  factory InstanceAccessRulesOptionsAccessRule.fromMap(
      Map<String, dynamic> map) {
    return InstanceAccessRulesOptionsAccessRule(
      ipAddressRanges: (map['ipAddressRanges'] as List).cast<String>(),
      name: map['name'] as String,
      squashMode: map['squashMode'] as String,
    );
  }
}
