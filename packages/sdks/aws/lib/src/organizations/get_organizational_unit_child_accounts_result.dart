// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organizational_unit_child_accounts_account.dart';

/// Result data returned by getOrganizationalUnitChildAccounts.
class GetOrganizationalUnitChildAccountsResult {
  /// List of child accounts, which have the following attributes:
  final List<GetOrganizationalUnitChildAccountsAccount> accounts;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String parentId;

  /// Creates a new [GetOrganizationalUnitChildAccountsResult].
  /// [accounts] List of child accounts, which have the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parentId] Required.
  GetOrganizationalUnitChildAccountsResult({
    required this.accounts,
    required this.id,
    required this.parentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': pulumi.Input.encodeList<GetOrganizationalUnitChildAccountsAccount, Map<String, dynamic>>(accounts, (value) => value.toMap()),
      'id': id,
      'parentId': parentId,
    };
  }

  factory GetOrganizationalUnitChildAccountsResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationalUnitChildAccountsResult(
      accounts: pulumi.Input.decodeList<GetOrganizationalUnitChildAccountsAccount>(map['accounts']!, (value) => GetOrganizationalUnitChildAccountsAccount.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      parentId: map['parentId'] as String,
    );
  }
}

