// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OrganizationDelegatedAdminAccount.
class OrganizationDelegatedAdminAccountArgs {
  /// An organization member account ID that you want to designate as a delegated administrator.
  final Input<String> accountId;

  OrganizationDelegatedAdminAccountArgs({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    return map;
  }

  factory OrganizationDelegatedAdminAccountArgs.fromMap(
      Map<String, dynamic> map) {
    return OrganizationDelegatedAdminAccountArgs(
      accountId: Input.asInput<String>(map['accountId']),
    );
  }
}
