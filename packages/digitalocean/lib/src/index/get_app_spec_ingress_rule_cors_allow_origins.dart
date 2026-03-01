// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecIngressRuleCorsAllowOrigins {
  /// The `Access-Control-Allow-Origin` header will be set to the client's origin only if the client's origin exactly matches the value you provide.
  final String? exact;
  /// The `Access-Control-Allow-Origin` header will be set to the client's origin if the beginning of the client's origin matches the value you provide.
  final String? prefix;
  /// The `Access-Control-Allow-Origin` header will be set to the client's origin if the client’s origin matches the regex you provide, in [RE2 style syntax](https://github.com/google/re2/wiki/Syntax).
  final String? regex;

  /// Creates a new [GetAppSpecIngressRuleCorsAllowOrigins].
  /// [exact] The `Access-Control-Allow-Origin` header will be set to the client's origin only if the client's origin exactly matches the value you provide.
  /// [prefix] The `Access-Control-Allow-Origin` header will be set to the client's origin if the beginning of the client's origin matches the value you provide.
  /// [regex] The `Access-Control-Allow-Origin` header will be set to the client's origin if the client’s origin matches the regex you provide, in [RE2 style syntax](https://github.com/google/re2/wiki/Syntax).
  GetAppSpecIngressRuleCorsAllowOrigins({
    this.exact,
    this.prefix,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
      'prefix': ?prefix,
      'regex': ?regex,
    };
  }

  factory GetAppSpecIngressRuleCorsAllowOrigins.fromMap(Map<String, dynamic> map) {
    return GetAppSpecIngressRuleCorsAllowOrigins(
      exact: map['exact'] == null ? null : map['exact'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      regex: map['regex'] == null ? null : map['regex'] as String,
    );
  }
}

