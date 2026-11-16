// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'admin_account_admin_scope_scope_filter_exclude_only.dart';
import 'admin_account_admin_scope_scope_filter_include_only.dart';

class AdminAccountAdminScopeScopeFilter {
  /// Accounts and OUs to exclude from the administrator's scope; everything else is in scope. See `excludeOnly` Block below.
  final pulumi.Input<AdminAccountAdminScopeScopeFilterExcludeOnly?>? excludeOnly;
  /// Whether to include all accounts and OUs of the organization in scope. Must be `true` if set.
  final pulumi.Input<bool?>? includeAll;
  /// Only the specified accounts and OUs are in the administrator's scope. See `includeOnly` Block below.
  final pulumi.Input<AdminAccountAdminScopeScopeFilterIncludeOnly?>? includeOnly;

  /// Creates a new [AdminAccountAdminScopeScopeFilter].
  /// [excludeOnly] Accounts and OUs to exclude from the administrator's scope; everything else is in scope. See `excludeOnly` Block below.
  /// [includeAll] Whether to include all accounts and OUs of the organization in scope. Must be `true` if set.
  /// [includeOnly] Only the specified accounts and OUs are in the administrator's scope. See `includeOnly` Block below.
  const AdminAccountAdminScopeScopeFilter({
    this.excludeOnly,
    this.includeAll,
    this.includeOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeOnly': ?pulumi.Input.mapOptionalInputValue<AdminAccountAdminScopeScopeFilterExcludeOnly, Map<String, dynamic>>(excludeOnly, (value) => value.toMap()),
      'includeAll': ?includeAll,
      'includeOnly': ?pulumi.Input.mapOptionalInputValue<AdminAccountAdminScopeScopeFilterIncludeOnly, Map<String, dynamic>>(includeOnly, (value) => value.toMap()),
    };
  }

  factory AdminAccountAdminScopeScopeFilter.fromMap(Map<String, dynamic> map) {
    return AdminAccountAdminScopeScopeFilter(
      excludeOnly: (() { final guardedValue = map['excludeOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdminAccountAdminScopeScopeFilterExcludeOnly.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includeAll: (() { final guardedValue = map['includeAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeOnly: (() { final guardedValue = map['includeOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdminAccountAdminScopeScopeFilterIncludeOnly.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
