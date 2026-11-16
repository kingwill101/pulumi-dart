// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AdminAccountAdminScopeScopeFilterExcludeOnly {
  /// Set of AWS account IDs.
  final pulumi.Input<List<String>?>? accounts;
  /// Set of AWS Organizations OU IDs (`ou-...`). Root IDs are not accepted.
  final pulumi.Input<List<String>?>? organizationalUnits;

  /// Creates a new [AdminAccountAdminScopeScopeFilterExcludeOnly].
  /// [accounts] Set of AWS account IDs.
  /// [organizationalUnits] Set of AWS Organizations OU IDs (`ou-...`). Root IDs are not accepted.
  const AdminAccountAdminScopeScopeFilterExcludeOnly({
    this.accounts,
    this.organizationalUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': ?accounts,
      'organizationalUnits': ?organizationalUnits,
    };
  }

  factory AdminAccountAdminScopeScopeFilterExcludeOnly.fromMap(Map<String, dynamic> map) {
    return AdminAccountAdminScopeScopeFilterExcludeOnly(
      accounts: (() { final guardedValue = map['accounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      organizationalUnits: (() { final guardedValue = map['organizationalUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
