// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_account_get_primary_contact_get_primary_contact_args_doc}
/// Arguments for getPrimaryContact.
/// {@endtemplate}
/// {@macro pulumi_account_get_primary_contact_get_primary_contact_args_doc}
class GetPrimaryContactArgs {
  /// The ID of the target account when managing member accounts. Will manage current user's account by default if omitted.
  final pulumi.Input<String>? accountId;

  /// Creates a new [GetPrimaryContactArgs].
  /// [accountId] The ID of the target account when managing member accounts. Will manage current user's account by default if omitted.
  GetPrimaryContactArgs({
    String? accountId,
  }) : accountId = pulumi.Input.asOptionalInput<String>(accountId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    return map;
  }

  factory GetPrimaryContactArgs.fromMap(Map<String, dynamic> map) {
    return GetPrimaryContactArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
    );
  }
}
