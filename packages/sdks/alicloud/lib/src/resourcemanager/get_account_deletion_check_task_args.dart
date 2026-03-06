// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_get_account_deletion_check_task_get_account_deletion_check_task_args_doc}
/// Arguments for getAccountDeletionCheckTask.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_get_account_deletion_check_task_get_account_deletion_check_task_args_doc}
class GetAccountDeletionCheckTaskArgs {
  /// The ID of the member that you want to delete.
  final pulumi.Input<String> accountId;

  /// Creates a new [GetAccountDeletionCheckTaskArgs].
  /// [accountId] The ID of the member that you want to delete.
  const GetAccountDeletionCheckTaskArgs({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory GetAccountDeletionCheckTaskArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountDeletionCheckTaskArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}

