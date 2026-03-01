// ignore_for_file: unused_element, unnecessary_cast


class AuthzPolicyHttpRuleToOperationHost {
  /// The input string must have the substring specified here. Note: empty contains match is not allowed, please use regex instead.
  /// Examples:
  /// * abc matches the value xyz.abc.def
  final String? contains;
  /// The input string must match exactly the string specified here.
  /// Examples:
  /// * abc only matches the value abc.
  final String? exact;
  /// If true, indicates the exact/prefix/suffix/contains matching should be case insensitive. For example, the matcher data will match both input string Data and data if set to true.
  final bool? ignoreCase;
  /// The input string must have the prefix specified here. Note: empty prefix is not allowed, please use regex instead.
  /// Examples:
  /// * abc matches the value abc.xyz
  final String? prefix;
  /// The input string must have the suffix specified here. Note: empty prefix is not allowed, please use regex instead.
  /// Examples:
  /// * abc matches the value xyz.abc
  final String? suffix;

  /// Creates a new [AuthzPolicyHttpRuleToOperationHost].
  /// [contains] The input string must have the substring specified here. Note: empty contains match is not allowed, please use regex instead.
  /// [exact] The input string must match exactly the string specified here.
  /// [ignoreCase] If true, indicates the exact/prefix/suffix/contains matching should be case insensitive. For example, the matcher data will match both input string Data and data if set to true.
  /// [prefix] The input string must have the prefix specified here. Note: empty prefix is not allowed, please use regex instead.
  /// [suffix] The input string must have the suffix specified here. Note: empty prefix is not allowed, please use regex instead.
  AuthzPolicyHttpRuleToOperationHost({
    this.contains,
    this.exact,
    this.ignoreCase,
    this.prefix,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contains': ?contains,
      'exact': ?exact,
      'ignoreCase': ?ignoreCase,
      'prefix': ?prefix,
      'suffix': ?suffix,
    };
  }

  factory AuthzPolicyHttpRuleToOperationHost.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleToOperationHost(
      contains: map['contains'] == null ? null : map['contains'] as String,
      exact: map['exact'] == null ? null : map['exact'] as String,
      ignoreCase: map['ignoreCase'] == null ? null : map['ignoreCase'] as bool,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      suffix: map['suffix'] == null ? null : map['suffix'] as String,
    );
  }
}

