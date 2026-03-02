// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_inspector2_delegated_admin_account_delegated_admin_account_args_doc}
/// The set of arguments for DelegatedAdminAccount.
/// {@endtemplate}
/// {@macro pulumi_inspector2_delegated_admin_account_delegated_admin_account_args_doc}
class DelegatedAdminAccountArgs {
  /// Account to enable as delegated admin account.
  final pulumi.Input<String> accountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DelegatedAdminAccountArgs].
  /// [accountId] Account to enable as delegated admin account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DelegatedAdminAccountArgs({
    required this.accountId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'region': ?region,
    };
  }

  factory DelegatedAdminAccountArgs.fromMap(Map<String, dynamic> map) {
    return DelegatedAdminAccountArgs(
      accountId: (map['accountId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

