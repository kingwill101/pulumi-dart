// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsso_delegate_account_delegate_account_args_doc}
/// The set of arguments for DelegateAccount.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_delegate_account_delegate_account_args_doc}
class DelegateAccountArgs {
  /// Delegate administrator account Id
  final pulumi.Input<String> accountId;

  /// Creates a new [DelegateAccountArgs].
  /// [accountId] Delegate administrator account Id
  DelegateAccountArgs({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory DelegateAccountArgs.fromMap(Map<String, dynamic> map) {
    return DelegateAccountArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}

