// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_get_account_get_account_args_doc}
/// Arguments for getAccount.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_account_get_account_args_doc}
class GetAccountArgs {
  /// Account ID number of a delegated administrator account in the organization.
  final pulumi.Input<String> accountId;
  /// Map of tags for the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetAccountArgs].
  /// [accountId] Account ID number of a delegated administrator account in the organization.
  /// [tags] Map of tags for the resource.
  const GetAccountArgs({
    required this.accountId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'tags': ?tags,
    };
  }

  factory GetAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
