// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleHttpHeaderActionHttpHeaderOption {
  /// The name of the header to set.
  final String? headerName;

  /// The value to set the named header to.
  final String? headerValue;

  /// Creates a new [SecurityPolicyRuleHttpHeaderActionHttpHeaderOption].
  /// [headerName] The name of the header to set.
  /// [headerValue] The value to set the named header to.
  SecurityPolicyRuleHttpHeaderActionHttpHeaderOption({
    this.headerName,
    this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': ?headerName,
      'headerValue': ?headerValue,
    };
  }

  factory SecurityPolicyRuleHttpHeaderActionHttpHeaderOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRuleHttpHeaderActionHttpHeaderOption(
      headerName: map['headerName'] == null
          ? null
          : map['headerName'] as String,
      headerValue: map['headerValue'] == null
          ? null
          : map['headerValue'] as String,
    );
  }
}
