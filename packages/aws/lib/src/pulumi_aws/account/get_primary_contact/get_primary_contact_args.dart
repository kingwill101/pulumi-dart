// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPrimaryContact.
class GetPrimaryContactArgs {
  /// The ID of the target account when managing member accounts. Will manage current user's account by default if omitted.
  final Input<String>? accountId;

  GetPrimaryContactArgs({
    this.accountId,
  });

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
      accountId: Input.asOptionalInput<String>(map['accountId']),
    );
  }
}
