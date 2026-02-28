// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeV1 {
  /// The name of the header to set.
  final String headerName;

  /// The value to set the named header to.
  final String headerValue;

  /// Creates a new [SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeV1].
  /// [headerName] The name of the header to set.
  /// [headerValue] The value to set the named header to.
  SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeV1({
    required this.headerName,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerName'] = headerName;
    map['headerValue'] = headerValue;
    return map;
  }

  factory SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleHttpHeaderActionHttpHeaderOptionResponseComputeV1(
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
    );
  }
}
