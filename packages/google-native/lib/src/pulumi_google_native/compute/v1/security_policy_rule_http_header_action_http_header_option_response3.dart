// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse3 {
  /// The name of the header to set.
  final String headerName;

  /// The value to set the named header to.
  final String headerValue;

  SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse3({
    required this.headerName,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerName'] = headerName;
    map['headerValue'] = headerValue;
    return map;
  }

  factory SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse3.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponse3(
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
    );
  }
}
