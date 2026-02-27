// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAccountPublicAccessBlock.
class GetAccountPublicAccessBlockArgs {
  /// AWS account ID to configure. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;

  GetAccountPublicAccessBlockArgs({
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

  factory GetAccountPublicAccessBlockArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountPublicAccessBlockArgs(
      accountId: pulumi.Input.asOptionalInput<String>(map['accountId']),
    );
  }
}
