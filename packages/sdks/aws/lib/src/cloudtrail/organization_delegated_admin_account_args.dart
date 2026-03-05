// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudtrail_organization_delegated_admin_account_organization_delegated_admin_account_args_doc}
/// The set of arguments for OrganizationDelegatedAdminAccount.
/// {@endtemplate}
/// {@macro pulumi_cloudtrail_organization_delegated_admin_account_organization_delegated_admin_account_args_doc}
class OrganizationDelegatedAdminAccountArgs {
  /// An organization member account ID that you want to designate as a delegated administrator.
  final pulumi.Input<String> accountId;

  /// Creates a new [OrganizationDelegatedAdminAccountArgs].
  /// [accountId] An organization member account ID that you want to designate as a delegated administrator.
  OrganizationDelegatedAdminAccountArgs({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory OrganizationDelegatedAdminAccountArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationDelegatedAdminAccountArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}

