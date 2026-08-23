// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow {
  /// Mode of threat protection operation in custom authentication.
  final pulumi.Input<String> customAuthMode;

  /// Creates a new [GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow].
  /// [customAuthMode] Mode of threat protection operation in custom authentication.
  const GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow({
    required this.customAuthMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customAuthMode': customAuthMode,
    };
  }

  factory GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow.fromMap(Map<String, dynamic> map) {
    return GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow(
      customAuthMode: pulumi.Input.fromValue(map['customAuthMode'] as String),
    );
  }
}
