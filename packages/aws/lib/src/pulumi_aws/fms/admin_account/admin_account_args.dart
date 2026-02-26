// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AdminAccount.
class AdminAccountArgs {
  /// The AWS account ID to associate with AWS Firewall Manager as the AWS Firewall Manager administrator account. This can be an AWS Organizations master account or a member account. Defaults to the current account. Must be configured to perform drift detection.
  final Input<String>? accountId;

  AdminAccountArgs({
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

  factory AdminAccountArgs.fromMap(Map<String, dynamic> map) {
    return AdminAccountArgs(
      accountId: Input.asOptionalInput<String>(map['accountId']),
    );
  }
}
