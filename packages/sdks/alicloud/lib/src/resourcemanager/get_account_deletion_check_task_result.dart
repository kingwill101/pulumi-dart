// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_deletion_check_task_abandon_able_check.dart';
import 'get_account_deletion_check_task_not_allow_reason.dart';

/// Result data returned by getAccountDeletionCheckTask.
class GetAccountDeletionCheckTaskResult {
  /// The check items that you can choose to ignore for the member deletion. Each element contains the following attributes:
  final List<GetAccountDeletionCheckTaskAbandonAbleCheck> abandonAbleChecks;
  final String accountId;

  /// Indicates whether the member can be deleted.
  final bool allowDelete;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The reasons why the member cannot be deleted. Each element contains the following attributes:
  final List<GetAccountDeletionCheckTaskNotAllowReason> notAllowReasons;

  /// The status of the check.
  final String status;

  /// Creates a new [GetAccountDeletionCheckTaskResult].
  /// [abandonAbleChecks] The check items that you can choose to ignore for the member deletion. Each element contains the following attributes:
  /// [accountId] Required.
  /// [allowDelete] Indicates whether the member can be deleted.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [notAllowReasons] The reasons why the member cannot be deleted. Each element contains the following attributes:
  /// [status] The status of the check.
  GetAccountDeletionCheckTaskResult({
    required this.abandonAbleChecks,
    required this.accountId,
    required this.allowDelete,
    required this.id,
    required this.notAllowReasons,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abandonAbleChecks':
          pulumi.Input.encodeList<
            GetAccountDeletionCheckTaskAbandonAbleCheck,
            Map<String, dynamic>
          >(abandonAbleChecks, (value) => value.toMap()),
      'accountId': accountId,
      'allowDelete': allowDelete,
      'id': id,
      'notAllowReasons':
          pulumi.Input.encodeList<
            GetAccountDeletionCheckTaskNotAllowReason,
            Map<String, dynamic>
          >(notAllowReasons, (value) => value.toMap()),
      'status': status,
    };
  }

  factory GetAccountDeletionCheckTaskResult.fromMap(Map<String, dynamic> map) {
    return GetAccountDeletionCheckTaskResult(
      abandonAbleChecks:
          pulumi.Input.decodeList<GetAccountDeletionCheckTaskAbandonAbleCheck>(
            map['abandonAbleChecks']!,
            (value) => GetAccountDeletionCheckTaskAbandonAbleCheck.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      accountId: map['accountId'] as String,
      allowDelete: map['allowDelete'] as bool,
      id: map['id'] as String,
      notAllowReasons:
          pulumi.Input.decodeList<GetAccountDeletionCheckTaskNotAllowReason>(
            map['notAllowReasons']!,
            (value) => GetAccountDeletionCheckTaskNotAllowReason.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      status: map['status'] as String,
    );
  }
}
