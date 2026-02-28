// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeBeta {
  /// The name of the header to set.
  final String? headerName;

  /// The value to set the named header to.
  final String? headerValue;

  /// Creates a new [SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeBeta].
  /// [headerName] The name of the header to set.
  /// [headerValue] The value to set the named header to.
  SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeBeta({
    this.headerName,
    this.headerValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headerNameValue = headerName;
    if (headerNameValue != null) {
      map['headerName'] = headerNameValue;
    }
    final headerValueValue = headerValue;
    if (headerValueValue != null) {
      map['headerValue'] = headerValueValue;
    }
    return map;
  }

  factory SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionComputeBeta(
      headerName:
          map['headerName'] == null ? null : map['headerName'] as String,
      headerValue:
          map['headerValue'] == null ? null : map['headerValue'] as String,
    );
  }
}
