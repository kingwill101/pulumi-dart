// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AdminAccountAdminScopeFirewallTypeScope {
  /// Whether to allow the administrator to manage all firewall types.
  final pulumi.Input<bool?>? allFirewallTypesEnabled;
  /// Set of firewall types that the administrator can manage. Valid values: `WAF`, `SHIELD_ADVANCED`.
  final pulumi.Input<List<String>?>? firewallTypes;

  /// Creates a new [AdminAccountAdminScopeFirewallTypeScope].
  /// [allFirewallTypesEnabled] Whether to allow the administrator to manage all firewall types.
  /// [firewallTypes] Set of firewall types that the administrator can manage. Valid values: `WAF`, `SHIELD_ADVANCED`.
  const AdminAccountAdminScopeFirewallTypeScope({
    this.allFirewallTypesEnabled,
    this.firewallTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allFirewallTypesEnabled': ?allFirewallTypesEnabled,
      'firewallTypes': ?firewallTypes,
    };
  }

  factory AdminAccountAdminScopeFirewallTypeScope.fromMap(Map<String, dynamic> map) {
    return AdminAccountAdminScopeFirewallTypeScope(
      allFirewallTypesEnabled: (() { final guardedValue = map['allFirewallTypesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      firewallTypes: (() { final guardedValue = map['firewallTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
