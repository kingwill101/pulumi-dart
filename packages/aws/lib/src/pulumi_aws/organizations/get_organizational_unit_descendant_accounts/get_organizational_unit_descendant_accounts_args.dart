// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationalUnitDescendantAccounts.
class GetOrganizationalUnitDescendantAccountsArgs {
  /// The parent ID of the accounts.
  final Input<String> parentId;

  GetOrganizationalUnitDescendantAccountsArgs({
    required this.parentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parentId'] = parentId;
    return map;
  }

  factory GetOrganizationalUnitDescendantAccountsArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationalUnitDescendantAccountsArgs(
      parentId: Input.asInput<String>(map['parentId']),
    );
  }
}
