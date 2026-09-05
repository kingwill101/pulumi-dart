// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organizational_unit_descendant_accounts_account.dart';

/// Result data returned by getOrganizationalUnitDescendantAccounts.
class GetOrganizationalUnitDescendantAccountsResult {
  /// List of child accounts, which have the following attributes:
  final List<GetOrganizationalUnitDescendantAccountsAccount>? accounts;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? parentId;

  /// Creates a new [GetOrganizationalUnitDescendantAccountsResult].
  /// [accounts] List of child accounts, which have the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parentId] Optional.
  const GetOrganizationalUnitDescendantAccountsResult({
    this.accounts,
    this.id,
    this.parentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': ?(() { final guardedValue = accounts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOrganizationalUnitDescendantAccountsAccount, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'parentId': ?parentId,
    };
  }

  factory GetOrganizationalUnitDescendantAccountsResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationalUnitDescendantAccountsResult(
      accounts: (() { final guardedValue = map['accounts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOrganizationalUnitDescendantAccountsAccount>(guardedValue, (value) => GetOrganizationalUnitDescendantAccountsAccount.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentId: (() { final guardedValue = map['parentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
