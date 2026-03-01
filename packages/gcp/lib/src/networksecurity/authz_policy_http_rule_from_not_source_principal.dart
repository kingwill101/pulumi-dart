// ignore_for_file: unused_element, unnecessary_cast

import 'authz_policy_http_rule_from_not_source_principal_principal.dart';

class AuthzPolicyHttpRuleFromNotSourcePrincipal {
  /// (Optional, Deprecated)
  /// The input string must have the substring specified here. Note: empty contains match is not allowed, please use regex instead.
  /// Examples:
  /// * abc matches the value xyz.abc.def
  ///
  /// > **Warning:** `principals.contains` is deprecated and will be removed in a future major release. Use `principals.principal.contains` instead.
  final String? contains;

  /// (Optional, Deprecated)
  /// The input string must match exactly the string specified here.
  /// Examples:
  /// * abc only matches the value abc.
  ///
  /// > **Warning:** `principals.exact` is deprecated and will be removed in a future major release. Use `principals.principal.exact` instead.
  final String? exact;

  /// (Optional, Deprecated)
  /// If true, indicates the exact/prefix/suffix/contains matching should be case insensitive. For example, the matcher data will match both input string Data and data if set to true.
  ///
  /// > **Warning:** `principals.ignore_case` is deprecated and will be removed in a future major release. Use `principals.principal.ignore_case` instead.
  final bool? ignoreCase;

  /// (Optional, Deprecated)
  /// The input string must have the prefix specified here. Note: empty prefix is not allowed, please use regex instead.
  /// Examples:
  /// * abc matches the value abc.xyz
  ///
  /// > **Warning:** `principals.prefix` is deprecated and will be removed in a future major release. Use `principals.principal.prefix` instead.
  final String? prefix;

  /// Required. A non-empty string whose value is matched against the principal value based on the principalSelector.
  /// Only exact match can be applied for CLIENT_CERT_URI_SAN, CLIENT_CERT_DNS_NAME_SAN, CLIENT_CERT_COMMON_NAME selectors.
  /// Structure is documented below.
  final AuthzPolicyHttpRuleFromNotSourcePrincipalPrincipal? principal;

  /// An enum to decide what principal value the principal rule will match against. If not specified, the PrincipalSelector is CLIENT_CERT_URI_SAN.
  /// Default value is `CLIENT_CERT_URI_SAN`.
  /// Possible values are: `PRINCIPAL_SELECTOR_UNSPECIFIED`, `CLIENT_CERT_URI_SAN`, `CLIENT_CERT_DNS_NAME_SAN`, `CLIENT_CERT_COMMON_NAME`.
  final String? principalSelector;

  /// (Optional, Deprecated)
  /// The input string must have the suffix specified here. Note: empty prefix is not allowed, please use regex instead.
  /// Examples:
  /// * abc matches the value xyz.abc
  ///
  /// > **Warning:** `principals.suffix` is deprecated and will be removed in a future major release. Use `principals.principal.suffix` instead.
  final String? suffix;

  /// Creates a new [AuthzPolicyHttpRuleFromNotSourcePrincipal].
  /// [contains] (Optional, Deprecated)
  /// [exact] (Optional, Deprecated)
  /// [ignoreCase] (Optional, Deprecated)
  /// [prefix] (Optional, Deprecated)
  /// [principal] Required. A non-empty string whose value is matched against the principal value based on the principalSelector.
  /// [principalSelector] An enum to decide what principal value the principal rule will match against. If not specified, the PrincipalSelector is CLIENT_CERT_URI_SAN.
  /// [suffix] (Optional, Deprecated)
  AuthzPolicyHttpRuleFromNotSourcePrincipal({
    this.contains,
    this.exact,
    this.ignoreCase,
    this.prefix,
    this.principal,
    this.principalSelector,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contains': ?contains,
      'exact': ?exact,
      'ignoreCase': ?ignoreCase,
      'prefix': ?prefix,
      'principal': ?principal == null ? null : principal!.toMap(),
      'principalSelector': ?principalSelector,
      'suffix': ?suffix,
    };
  }

  factory AuthzPolicyHttpRuleFromNotSourcePrincipal.fromMap(
    Map<String, dynamic> map,
  ) {
    return AuthzPolicyHttpRuleFromNotSourcePrincipal(
      contains: map['contains'] == null ? null : map['contains'] as String,
      exact: map['exact'] == null ? null : map['exact'] as String,
      ignoreCase: map['ignoreCase'] == null ? null : map['ignoreCase'] as bool,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      principal: map['principal'] == null
          ? null
          : AuthzPolicyHttpRuleFromNotSourcePrincipalPrincipal.fromMap(
              (map['principal'] as Map).cast<String, dynamic>(),
            ),
      principalSelector: map['principalSelector'] == null
          ? null
          : map['principalSelector'] as String,
      suffix: map['suffix'] == null ? null : map['suffix'] as String,
    );
  }
}
