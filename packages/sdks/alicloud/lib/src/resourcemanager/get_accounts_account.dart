// ignore_for_file: unused_element, unnecessary_cast


class GetAccountsAccount {
  /// The Alibaba Cloud account ID of the member.
  final String accountId;
  /// (Available since v1.125.0) The Alibaba Cloud account name of the member. **Note:** `account_name` takes effect only if `enable_details` is set to `true`.
  final String accountName;
  /// (Available since v1.264.0) The deletion status of the member.
  final String deletionStatus;
  /// The display name of the member.
  final String displayName;
  /// The ID of the folder.
  final String folderId;
  /// The ID of the Account.
  final String id;
  /// The way in which the member joins the resource directory.
  final String joinMethod;
  /// The time when the member joined the resource directory.
  final String joinTime;
  /// The time when the member was modified.
  final String modifyTime;
  /// (Available since v1.124.3) The ID of the settlement account. **Note:** `payer_account_id` takes effect only if `enable_details` is set to `true`.
  final String payerAccountId;
  /// The ID of the resource directory.
  final String resourceDirectoryId;
  /// The status of account. Valid values: `CreateCancelled`, `CreateExpired`, `CreateFailed`, `CreateSuccess`, `CreateVerifying`, `InviteSuccess`, `PromoteCancelled`, `PromoteExpired`, `PromoteFailed`, `PromoteSuccess`, `PromoteVerifying`.
  final String status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The type of the member.
  final String type;

  /// Creates a new [GetAccountsAccount].
  /// [accountId] The Alibaba Cloud account ID of the member.
  /// [accountName] (Available since v1.125.0) The Alibaba Cloud account name of the member. **Note:** `account_name` takes effect only if `enable_details` is set to `true`.
  /// [deletionStatus] (Available since v1.264.0) The deletion status of the member.
  /// [displayName] The display name of the member.
  /// [folderId] The ID of the folder.
  /// [id] The ID of the Account.
  /// [joinMethod] The way in which the member joins the resource directory.
  /// [joinTime] The time when the member joined the resource directory.
  /// [modifyTime] The time when the member was modified.
  /// [payerAccountId] (Available since v1.124.3) The ID of the settlement account. **Note:** `payer_account_id` takes effect only if `enable_details` is set to `true`.
  /// [resourceDirectoryId] The ID of the resource directory.
  /// [status] The status of account. Valid values: `CreateCancelled`, `CreateExpired`, `CreateFailed`, `CreateSuccess`, `CreateVerifying`, `InviteSuccess`, `PromoteCancelled`, `PromoteExpired`, `PromoteFailed`, `PromoteSuccess`, `PromoteVerifying`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The type of the member.
  GetAccountsAccount({
    required this.accountId,
    required this.accountName,
    required this.deletionStatus,
    required this.displayName,
    required this.folderId,
    required this.id,
    required this.joinMethod,
    required this.joinTime,
    required this.modifyTime,
    required this.payerAccountId,
    required this.resourceDirectoryId,
    required this.status,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'accountName': accountName,
      'deletionStatus': deletionStatus,
      'displayName': displayName,
      'folderId': folderId,
      'id': id,
      'joinMethod': joinMethod,
      'joinTime': joinTime,
      'modifyTime': modifyTime,
      'payerAccountId': payerAccountId,
      'resourceDirectoryId': resourceDirectoryId,
      'status': status,
      'tags': tags,
      'type': type,
    };
  }

  factory GetAccountsAccount.fromMap(Map<String, dynamic> map) {
    return GetAccountsAccount(
      accountId: map['accountId'] as String,
      accountName: map['accountName'] as String,
      deletionStatus: map['deletionStatus'] as String,
      displayName: map['displayName'] as String,
      folderId: map['folderId'] as String,
      id: map['id'] as String,
      joinMethod: map['joinMethod'] as String,
      joinTime: map['joinTime'] as String,
      modifyTime: map['modifyTime'] as String,
      payerAccountId: map['payerAccountId'] as String,
      resourceDirectoryId: map['resourceDirectoryId'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

