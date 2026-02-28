// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organizational_unit_descendant_accounts_account.dart';

/// Result data returned by getOrganizationalUnitDescendantAccounts.
class GetOrganizationalUnitDescendantAccountsResult {
  /// List of child accounts, which have the following attributes:
  final List<GetOrganizationalUnitDescendantAccountsAccount> accounts;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String parentId;

  /// Creates a new [GetOrganizationalUnitDescendantAccountsResult].
  /// [accounts] List of child accounts, which have the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parentId] Required.
  GetOrganizationalUnitDescendantAccountsResult({
    required this.accounts,
    required this.id,
    required this.parentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accounts'] = pulumi.Input.encodeList<
        GetOrganizationalUnitDescendantAccountsAccount,
        Map<String, dynamic>>(accounts, (value) => value.toMap());
    map['id'] = id;
    map['parentId'] = parentId;
    return map;
  }

  factory GetOrganizationalUnitDescendantAccountsResult.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationalUnitDescendantAccountsResult(
      accounts: pulumi.Input.decodeList<
              GetOrganizationalUnitDescendantAccountsAccount>(
          map['accounts'],
          (value) => GetOrganizationalUnitDescendantAccountsAccount.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      parentId: map['parentId'] as String,
    );
  }
}
