// ignore_for_file: unused_element, unnecessary_cast


class GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd {
  /// The name of the header to set.
  final String headerName;
  /// The value to set the named header to.
  final String headerValue;

  /// Creates a new [GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd].
  /// [headerName] The name of the header to set.
  /// [headerValue] The value to set the named header to.
  GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd({
    required this.headerName,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
    };
  }

  factory GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyRuleHeaderActionRequestHeadersToAdd(
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
    );
  }
}

