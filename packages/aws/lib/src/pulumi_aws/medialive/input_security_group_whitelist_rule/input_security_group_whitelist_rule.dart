// ignore_for_file: unused_element, unnecessary_cast

class InputSecurityGroupWhitelistRule {
  /// The IPv4 CIDR that's whitelisted.
  final String cidr;

  InputSecurityGroupWhitelistRule({
    required this.cidr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidr'] = cidr;
    return map;
  }

  factory InputSecurityGroupWhitelistRule.fromMap(Map<String, dynamic> map) {
    return InputSecurityGroupWhitelistRule(
      cidr: map['cidr'] as String,
    );
  }
}
