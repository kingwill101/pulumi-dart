// ignore_for_file: unused_element, unnecessary_cast

class AuthzPolicyHttpRuleFromSourceIpBlock {
  /// The length of the address range.
  final int length;

  /// The address prefix.
  final String prefix;

  AuthzPolicyHttpRuleFromSourceIpBlock({
    required this.length,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['length'] = length;
    map['prefix'] = prefix;
    return map;
  }

  factory AuthzPolicyHttpRuleFromSourceIpBlock.fromMap(
      Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleFromSourceIpBlock(
      length: map['length'] as int,
      prefix: map['prefix'] as String,
    );
  }
}
