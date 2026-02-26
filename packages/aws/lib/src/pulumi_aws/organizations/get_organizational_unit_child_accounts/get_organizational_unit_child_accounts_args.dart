// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationalUnitChildAccounts.
class GetOrganizationalUnitChildAccountsArgs {
  /// The parent ID of the accounts.
  final Input<String> parentId;

  GetOrganizationalUnitChildAccountsArgs({
    required this.parentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parentId'] = parentId;
    return map;
  }

  factory GetOrganizationalUnitChildAccountsArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationalUnitChildAccountsArgs(
      parentId: Input.asInput<String>(map['parentId']),
    );
  }
}
