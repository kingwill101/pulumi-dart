// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleHeaderActionRequestHeadersToAdd {
  /// The name of the header to set.
  final String? headerName;

  /// The value to set the named header to.
  final String? headerValue;

  /// Creates a new [SecurityPolicyRuleHeaderActionRequestHeadersToAdd].
  /// [headerName] The name of the header to set.
  /// [headerValue] The value to set the named header to.
  SecurityPolicyRuleHeaderActionRequestHeadersToAdd({
    this.headerName,
    this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': ?headerName,
      'headerValue': ?headerValue,
    };
  }

  factory SecurityPolicyRuleHeaderActionRequestHeadersToAdd.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRuleHeaderActionRequestHeadersToAdd(
      headerName: map['headerName'] == null
          ? null
          : map['headerName'] as String,
      headerValue: map['headerValue'] == null
          ? null
          : map['headerValue'] as String,
    );
  }
}
