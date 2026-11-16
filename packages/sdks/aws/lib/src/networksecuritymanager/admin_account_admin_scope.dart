// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'admin_account_admin_scope_firewall_type_scope.dart';
import 'admin_account_admin_scope_scope_filter.dart';

class AdminAccountAdminScope {
  /// Firewall types that the administrator can create and manage. See `firewallTypeScope` Block below.
  final pulumi.Input<AdminAccountAdminScopeFirewallTypeScope?>? firewallTypeScope;
  /// Accounts and OUs that are in the administrator's scope. See `scopeFilter` Block below.
  final pulumi.Input<AdminAccountAdminScopeScopeFilter?>? scopeFilter;

  /// Creates a new [AdminAccountAdminScope].
  /// [firewallTypeScope] Firewall types that the administrator can create and manage. See `firewallTypeScope` Block below.
  /// [scopeFilter] Accounts and OUs that are in the administrator's scope. See `scopeFilter` Block below.
  const AdminAccountAdminScope({
    this.firewallTypeScope,
    this.scopeFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallTypeScope': ?pulumi.Input.mapOptionalInputValue<AdminAccountAdminScopeFirewallTypeScope, Map<String, dynamic>>(firewallTypeScope, (value) => value.toMap()),
      'scopeFilter': ?pulumi.Input.mapOptionalInputValue<AdminAccountAdminScopeScopeFilter, Map<String, dynamic>>(scopeFilter, (value) => value.toMap()),
    };
  }

  factory AdminAccountAdminScope.fromMap(Map<String, dynamic> map) {
    return AdminAccountAdminScope(
      firewallTypeScope: (() { final guardedValue = map['firewallTypeScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdminAccountAdminScopeFirewallTypeScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scopeFilter: (() { final guardedValue = map['scopeFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdminAccountAdminScopeScopeFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
