// ignore_for_file: unused_element, unnecessary_cast


class AppSpecIngressRuleMatchPath {
  /// Prefix-based match.
  final String? prefix;

  /// Creates a new [AppSpecIngressRuleMatchPath].
  /// [prefix] Prefix-based match.
  AppSpecIngressRuleMatchPath({
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
    };
  }

  factory AppSpecIngressRuleMatchPath.fromMap(Map<String, dynamic> map) {
    return AppSpecIngressRuleMatchPath(
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
    );
  }
}

