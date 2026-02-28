// ignore_for_file: unused_element, unnecessary_cast


class AuthzPolicyHttpRuleFromSourceIpBlock {
  /// The length of the address range.
  final int length;
  /// The address prefix.
  final String prefix;

  /// Creates a new [AuthzPolicyHttpRuleFromSourceIpBlock].
  /// [length] The length of the address range.
  /// [prefix] The address prefix.
  AuthzPolicyHttpRuleFromSourceIpBlock({
    required this.length,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'length': length,
      'prefix': prefix,
    };
  }

  factory AuthzPolicyHttpRuleFromSourceIpBlock.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleFromSourceIpBlock(
      length: map['length'] as int,
      prefix: map['prefix'] as String,
    );
  }
}

