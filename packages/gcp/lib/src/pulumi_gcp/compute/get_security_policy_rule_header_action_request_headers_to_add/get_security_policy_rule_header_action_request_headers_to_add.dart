// ignore_for_file: unused_element, unnecessary_cast

class GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd {
  /// The name of the header to set.
  final String headerName;

  /// The value to set the named header to.
  final String headerValue;

  GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd({
    required this.headerName,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerName'] = headerName;
    map['headerValue'] = headerValue;
    return map;
  }

  factory GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd(
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
    );
  }
}
