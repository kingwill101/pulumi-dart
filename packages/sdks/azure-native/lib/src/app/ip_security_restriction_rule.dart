// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rule to restrict incoming IP address.
class IpSecurityRestrictionRule {
  /// Allow or Deny rules to determine for incoming IP. Note: Rules can only consist of ALL Allow or ALL Deny
  final pulumi.Input<String> action;
  /// Describe the IP restriction rule that is being sent to the container-app. This is an optional field.
  final pulumi.Input<String>? description;
  /// CIDR notation to match incoming IP address
  final pulumi.Input<String> ipAddressRange;
  /// Name for the IP restriction rule.
  final pulumi.Input<String> name;

  /// Creates a new [IpSecurityRestrictionRule].
  /// [action] Allow or Deny rules to determine for incoming IP. Note: Rules can only consist of ALL Allow or ALL Deny
  /// [description] Describe the IP restriction rule that is being sent to the container-app. This is an optional field.
  /// [ipAddressRange] CIDR notation to match incoming IP address
  /// [name] Name for the IP restriction rule.
  IpSecurityRestrictionRule({
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

  factory IpSecurityRestrictionRule.fromMap(Map<String, dynamic> map) {
    return IpSecurityRestrictionRule(
      action: (map['action'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      ipAddressRange: (map['ipAddressRange'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

