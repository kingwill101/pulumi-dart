// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_organizational_unit_descendant_accounts_get_organizational_unit_descendant_accounts_args_doc}
/// Arguments for getOrganizationalUnitDescendantAccounts.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_organizational_unit_descendant_accounts_get_organizational_unit_descendant_accounts_args_doc}
class GetOrganizationalUnitDescendantAccountsArgs {
  /// The parent ID of the accounts.
  final pulumi.Input<String> parentId;

  /// Creates a new [GetOrganizationalUnitDescendantAccountsArgs].
  /// [parentId] The parent ID of the accounts.
  GetOrganizationalUnitDescendantAccountsArgs({
    required this.parentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentId': parentId,
    };
  }

  factory GetOrganizationalUnitDescendantAccountsArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationalUnitDescendantAccountsArgs(
      parentId: (map['parentId'] as String).input(),
    );
  }
}

