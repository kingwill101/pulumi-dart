// ignore_for_file: unused_element, unnecessary_cast


class AppSpecStaticSiteCorsAllowOrigins {
  /// Exact string match.
  final String? exact;
  /// Prefix-based match.
  final String? prefix;
  /// RE2 style regex-based match.
  final String? regex;

  /// Creates a new [AppSpecStaticSiteCorsAllowOrigins].
  /// [exact] Exact string match.
  /// [prefix] Prefix-based match.
  /// [regex] RE2 style regex-based match.
  AppSpecStaticSiteCorsAllowOrigins({
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

  factory AppSpecStaticSiteCorsAllowOrigins.fromMap(Map<String, dynamic> map) {
    return AppSpecStaticSiteCorsAllowOrigins(
      exact: map['exact'] == null ? null : map['exact'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      regex: map['regex'] == null ? null : map['regex'] as String,
    );
  }
}

