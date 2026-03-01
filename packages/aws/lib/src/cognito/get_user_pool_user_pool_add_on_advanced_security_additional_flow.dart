// ignore_for_file: unused_element, unnecessary_cast

class GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow {
  /// Mode of threat protection operation in custom authentication.
  final String customAuthMode;

  /// Creates a new [GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow].
  /// [customAuthMode] Mode of threat protection operation in custom authentication.
  GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow({
    required this.customAuthMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'customAuthMode': customAuthMode};
  }

  factory GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow(
      customAuthMode: map['customAuthMode'] as String,
    );
  }
}
