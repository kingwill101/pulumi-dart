// ignore_for_file: unused_element, unnecessary_cast


/// Rule to restrict incoming IP address.
class IpSecurityRestrictionRuleResponse {
  /// Allow or Deny rules to determine for incoming IP. Note: Rules can only consist of ALL Allow or ALL Deny
  final String action;
  /// Describe the IP restriction rule that is being sent to the container-app. This is an optional field.
  final String? description;
  /// CIDR notation to match incoming IP address
  final String ipAddressRange;
  /// Name for the IP restriction rule.
  final String name;

  /// Creates a new [IpSecurityRestrictionRuleResponse].
  /// [action] Allow or Deny rules to determine for incoming IP. Note: Rules can only consist of ALL Allow or ALL Deny
  /// [description] Describe the IP restriction rule that is being sent to the container-app. This is an optional field.
  /// [ipAddressRange] CIDR notation to match incoming IP address
  /// [name] Name for the IP restriction rule.
  IpSecurityRestrictionRuleResponse({
    required this.action,
    this.description,
    required this.ipAddressRange,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'ipAddressRange': ipAddressRange,
      'name': name,
    };
  }

  factory IpSecurityRestrictionRuleResponse.fromMap(Map<String, dynamic> map) {
    return IpSecurityRestrictionRuleResponse(
      action: map['action'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      ipAddressRange: map['ipAddressRange'] as String,
      name: map['name'] as String,
    );
  }
}

