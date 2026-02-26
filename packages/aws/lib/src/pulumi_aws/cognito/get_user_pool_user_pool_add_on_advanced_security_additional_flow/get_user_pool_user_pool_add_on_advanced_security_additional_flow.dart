// ignore_for_file: unused_element, unnecessary_cast

class GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow {
  /// Mode of threat protection operation in custom authentication.
  final String customAuthMode;

  GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow({
    required this.customAuthMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customAuthMode'] = customAuthMode;
    return map;
  }

  factory GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow.fromMap(
      Map<String, dynamic> map) {
    return GetUserPoolUserPoolAddOnAdvancedSecurityAdditionalFlow(
      customAuthMode: map['customAuthMode'] as String,
    );
  }
}
