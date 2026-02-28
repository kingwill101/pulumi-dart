// ignore_for_file: unused_element, unnecessary_cast


class SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta {
  /// The name of the header to set.
  final String headerName;
  /// The value to set the named header to.
  final String headerValue;

  /// Creates a new [SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta].
  /// [headerName] The name of the header to set.
  /// [headerValue] The value to set the named header to.
  SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta({
    required this.headerName,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
    };
  }

  factory SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta(
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
    );
  }
}

