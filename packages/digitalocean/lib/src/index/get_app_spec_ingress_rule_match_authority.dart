// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecIngressRuleMatchAuthority {
  /// The `Access-Control-Allow-Origin` header will be set to the client's origin only if the client's origin exactly matches the value you provide.
  final String exact;

  /// Creates a new [GetAppSpecIngressRuleMatchAuthority].
  /// [exact] The `Access-Control-Allow-Origin` header will be set to the client's origin only if the client's origin exactly matches the value you provide.
  GetAppSpecIngressRuleMatchAuthority({
    required this.exact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': exact,
    };
  }

  factory GetAppSpecIngressRuleMatchAuthority.fromMap(Map<String, dynamic> map) {
    return GetAppSpecIngressRuleMatchAuthority(
      exact: map['exact'] as String,
    );
  }
}

