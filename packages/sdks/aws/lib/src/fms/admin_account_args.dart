// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fms_admin_account_admin_account_args_doc}
/// The set of arguments for AdminAccount.
/// {@endtemplate}
/// {@macro pulumi_fms_admin_account_admin_account_args_doc}
class AdminAccountArgs {
  /// The AWS account ID to associate with AWS Firewall Manager as the AWS Firewall Manager administrator account. This can be an AWS Organizations master account or a member account. Defaults to the current account. Must be configured to perform drift detection.
  final pulumi.Input<String>? accountId;

  /// Creates a new [AdminAccountArgs].
  /// [accountId] The AWS account ID to associate with AWS Firewall Manager as the AWS Firewall Manager administrator account. This can be an AWS Organizations master account or a member account. Defaults to the current account. Must be configured to perform drift detection.
  AdminAccountArgs({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory AdminAccountArgs.fromMap(Map<String, dynamic> map) {
    return AdminAccountArgs(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
    );
  }
}

