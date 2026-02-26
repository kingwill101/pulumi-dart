// ignore_for_file: unused_element, unnecessary_cast

class UserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows {
  /// Mode of threat protection operation in custom authentication. Valid values are `AUDIT` or `ENFORCED`. The default value is `AUDIT`.
  final String? customAuthMode;

  UserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows({
    this.customAuthMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customAuthModeValue = customAuthMode;
    if (customAuthModeValue != null) {
      map['customAuthMode'] = customAuthModeValue;
    }
    return map;
  }

  factory UserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows.fromMap(
      Map<String, dynamic> map) {
    return UserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows(
      customAuthMode: map['customAuthMode'] == null
          ? null
          : map['customAuthMode'] as String,
    );
  }
}
