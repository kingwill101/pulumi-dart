// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountsAccount {
  /// The Alibaba Cloud account ID of the member.
  final pulumi.Input<String> accountId;
  /// (Available since v1.125.0) The Alibaba Cloud account name of the member. **Note:** `account_name` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> accountName;
  /// (Available since v1.264.0) The deletion status of the member.
  final pulumi.Input<String> deletionStatus;
  /// The display name of the member.
  final pulumi.Input<String> displayName;
  /// The ID of the folder.
  final pulumi.Input<String> folderId;
  /// The ID of the Account.
  final pulumi.Input<String> id;
  /// The way in which the member joins the resource directory.
  final pulumi.Input<String> joinMethod;
  /// The time when the member joined the resource directory.
  final pulumi.Input<String> joinTime;
  /// The time when the member was modified.
  final pulumi.Input<String> modifyTime;
  /// (Available since v1.124.3) The ID of the settlement account. **Note:** `payer_account_id` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> payerAccountId;
  /// The ID of the resource directory.
  final pulumi.Input<String> resourceDirectoryId;
  /// The status of account. Valid values: `CreateCancelled`, `CreateExpired`, `CreateFailed`, `CreateSuccess`, `CreateVerifying`, `InviteSuccess`, `PromoteCancelled`, `PromoteExpired`, `PromoteFailed`, `PromoteSuccess`, `PromoteVerifying`.
  final pulumi.Input<String> status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// The type of the member.
  final pulumi.Input<String> type;

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
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      deletionStatus: pulumi.Input.fromValue(map['deletionStatus'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      folderId: pulumi.Input.fromValue(map['folderId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      joinMethod: pulumi.Input.fromValue(map['joinMethod'] as String),
      joinTime: pulumi.Input.fromValue(map['joinTime'] as String),
      modifyTime: pulumi.Input.fromValue(map['modifyTime'] as String),
      payerAccountId: pulumi.Input.fromValue(map['payerAccountId'] as String),
      resourceDirectoryId: pulumi.Input.fromValue(map['resourceDirectoryId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

