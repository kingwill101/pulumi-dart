// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows {
  /// Mode of threat protection operation in custom authentication. Valid values are `AUDIT` or `ENFORCED`. The default value is `AUDIT`.
  final pulumi.Input<String>? customAuthMode;

  /// Creates a new [UserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows].
  /// [customAuthMode] Mode of threat protection operation in custom authentication. Valid values are `AUDIT` or `ENFORCED`. The default value is `AUDIT`.
  const UserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows({
    this.customAuthMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customAuthMode': ?customAuthMode,
    };
  }

  factory UserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows.fromMap(Map<String, dynamic> map) {
    return UserPoolUserPoolAddOnsAdvancedSecurityAdditionalFlows(
      customAuthMode: (() { final guardedValue = map['customAuthMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
