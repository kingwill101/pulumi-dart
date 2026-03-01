// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_organizational_unit_child_accounts_get_organizational_unit_child_accounts_args_doc}
/// Arguments for getOrganizationalUnitChildAccounts.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_organizational_unit_child_accounts_get_organizational_unit_child_accounts_args_doc}
class GetOrganizationalUnitChildAccountsArgs {
  /// The parent ID of the accounts.
  final pulumi.Input<String> parentId;

  /// Creates a new [GetOrganizationalUnitChildAccountsArgs].
  /// [parentId] The parent ID of the accounts.
  GetOrganizationalUnitChildAccountsArgs({required String parentId})
    : parentId = pulumi.Input.asInput<String>(parentId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'parentId': parentId};
  }

  factory GetOrganizationalUnitChildAccountsArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOrganizationalUnitChildAccountsArgs(
      parentId: map['parentId'] as String,
    );
  }
}
