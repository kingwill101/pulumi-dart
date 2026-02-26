// ignore_for_file: unused_element, unnecessary_cast

class AuthzPolicyHttpRuleFromNotSourceResourceIamServiceAccount {
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

  AuthzPolicyHttpRuleFromNotSourceResourceIamServiceAccount({
    this.contains,
    this.exact,
    this.ignoreCase,
    this.prefix,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containsValue = contains;
    if (containsValue != null) {
      map['contains'] = containsValue;
    }
    final exactValue = exact;
    if (exactValue != null) {
      map['exact'] = exactValue;
    }
    final ignoreCaseValue = ignoreCase;
    if (ignoreCaseValue != null) {
      map['ignoreCase'] = ignoreCaseValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final suffixValue = suffix;
    if (suffixValue != null) {
      map['suffix'] = suffixValue;
    }
    return map;
  }

  factory AuthzPolicyHttpRuleFromNotSourceResourceIamServiceAccount.fromMap(
      Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleFromNotSourceResourceIamServiceAccount(
      contains: map['contains'] == null ? null : map['contains'] as String,
      exact: map['exact'] == null ? null : map['exact'] as String,
      ignoreCase: map['ignoreCase'] == null ? null : map['ignoreCase'] as bool,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      suffix: map['suffix'] == null ? null : map['suffix'] as String,
    );
  }
}
