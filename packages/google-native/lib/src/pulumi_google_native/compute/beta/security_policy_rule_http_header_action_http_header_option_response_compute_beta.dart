// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta {
  /// The name of the header to set.
  final String headerName;

  /// The value to set the named header to.
  final String headerValue;

  SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta({
    required this.headerName,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerName'] = headerName;
    map['headerValue'] = headerValue;
    return map;
  }

  factory SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeBeta(
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
    );
  }
}
