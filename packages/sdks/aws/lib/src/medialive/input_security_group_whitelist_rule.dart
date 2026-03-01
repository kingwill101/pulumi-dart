// ignore_for_file: unused_element, unnecessary_cast


class InputSecurityGroupWhitelistRule {
  /// The IPv4 CIDR that's whitelisted.
  final String cidr;

  /// Creates a new [InputSecurityGroupWhitelistRule].
  /// [cidr] The IPv4 CIDR that's whitelisted.
  InputSecurityGroupWhitelistRule({
    required this.cidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
    };
  }

  factory InputSecurityGroupWhitelistRule.fromMap(Map<String, dynamic> map) {
    return InputSecurityGroupWhitelistRule(
      cidr: map['cidr'] as String,
    );
  }
}

