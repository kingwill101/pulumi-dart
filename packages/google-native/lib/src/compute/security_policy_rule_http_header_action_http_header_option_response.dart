// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse {
  /// The name of the header to set.
  final String headerName;

  /// The value to set the named header to.
  final String headerValue;

  /// Creates a new [SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse].
  /// [headerName] The name of the header to set.
  /// [headerValue] The value to set the named header to.
  SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse({
    required this.headerName,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerName'] = headerName;
    map['headerValue'] = headerValue;
    return map;
  }

  factory SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse(
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
    );
  }
}
