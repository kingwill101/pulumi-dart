// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Account resources.
class AccountState {
  /// . Field 'abandon_able_check_id' has been deprecated from provider version 1.249.0. New field 'abandonable_check_id' instead.
  final pulumi.Input<List<String>>? abandonAbleCheckIds;
  /// The ID of the check item that can choose to abandon and continue to perform member deletion.
  /// The ID is obtained from the return parameter AbandonableChecks of GetAccountDeletionCheckResult.
  final pulumi.Input<List<String>>? abandonableCheckIds;
  /// Account name prefix. Empty the system randomly generated.
  /// Format: English letters, numbers, and special characters_.-can be entered. It must start and end with an English letter or number, and continuous special characters_.-cannot be entered '_.-'.
  /// The format of the full account name is @< ResourceDirectoryId>.aliyunid.com, for example: 'alice @ rd-3G ****.aliyunid.com'
  /// The account name must be unique in the resource directory.
  final pulumi.Input<String>? accountNamePrefix;
  /// Member name
  final pulumi.Input<String>? displayName;
  /// The ID of the parent folder
  final pulumi.Input<String>? folderId;
  /// Whether to force delete the account.
  final pulumi.Input<bool>? forceDelete;
  /// Ways for members to join the resource directory.  invited, created
  final pulumi.Input<String>? joinMethod;
  /// The time when the member joined the resource directory
  final pulumi.Input<String>? joinTime;
  /// The modification time of the invitation
  final pulumi.Input<String>? modifyTime;
  /// The settlement account ID. If it is left blank, the newly created member will be used for self-settlement.
  final pulumi.Input<String>? payerAccountId;
  /// The identity type of the member. Valid values:
  /// - resell: The member is an account for a reseller. This is the default value. A relationship is automatically established between the member and the reseller. The management account of the resource directory must be used as the billing account of the member.
  /// - non_resell: The member is not an account for a reseller. The member is an account that is not associated with a reseller. You can directly use the account to purchase Alibaba Cloud resources. The member is used as its own billing account.
  ///
  /// > **NOTE:**  This parameter is available only for resellers at the international site (alibabacloud.com).
  final pulumi.Input<String>? resellAccountType;
  /// Resource directory ID
  final pulumi.Input<String>? resourceDirectoryId;
  /// Member joining status.  CreateSuccess,CreateVerifying,CreateFailed,CreateExpired,CreateCancelled,PromoteVerifying,PromoteFailed,PromoteExpired,PromoteCancelled,PromoteSuccess,InviteSuccess,Removed
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// Member type. The value of ResourceAccount indicates the resource account
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? type;

  /// Creates a new [AccountState].
  /// [abandonAbleCheckIds] . Field 'abandon_able_check_id' has been deprecated from provider version 1.249.0. New field 'abandonable_check_id' instead.
  /// [abandonableCheckIds] The ID of the check item that can choose to abandon and continue to perform member deletion.
  /// [accountNamePrefix] Account name prefix. Empty the system randomly generated.
  /// [displayName] Member name
  /// [folderId] The ID of the parent folder
  /// [forceDelete] Whether to force delete the account.
  /// [joinMethod] Ways for members to join the resource directory.  invited, created
  /// [joinTime] The time when the member joined the resource directory
  /// [modifyTime] The modification time of the invitation
  /// [payerAccountId] The settlement account ID. If it is left blank, the newly created member will be used for self-settlement.
  /// [resellAccountType] The identity type of the member. Valid values:
  /// [resourceDirectoryId] Resource directory ID
  /// [status] Member joining status.  CreateSuccess,CreateVerifying,CreateFailed,CreateExpired,CreateCancelled,PromoteVerifying,PromoteFailed,PromoteExpired,PromoteCancelled,PromoteSuccess,InviteSuccess,Removed
  /// [tags] The tag of the resource
  /// [type] Member type. The value of ResourceAccount indicates the resource account
  AccountState({
    this.abandonAbleCheckIds,
    this.abandonableCheckIds,
    this.accountNamePrefix,
    this.displayName,
    this.folderId,
    this.forceDelete,
    this.joinMethod,
    this.joinTime,
    this.modifyTime,
    this.payerAccountId,
    this.resellAccountType,
    this.resourceDirectoryId,
    this.status,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abandonAbleCheckIds': ?abandonAbleCheckIds,
      'abandonableCheckIds': ?abandonableCheckIds,
      'accountNamePrefix': ?accountNamePrefix,
      'displayName': ?displayName,
      'folderId': ?folderId,
      'forceDelete': ?forceDelete,
      'joinMethod': ?joinMethod,
      'joinTime': ?joinTime,
      'modifyTime': ?modifyTime,
      'payerAccountId': ?payerAccountId,
      'resellAccountType': ?resellAccountType,
      'resourceDirectoryId': ?resourceDirectoryId,
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory AccountState.fromMap(Map<String, dynamic> map) {
    return AccountState(
      abandonAbleCheckIds: map['abandonAbleCheckIds'] == null ? null : ((map['abandonAbleCheckIds'] as List).cast<String>()).input(),
      abandonableCheckIds: map['abandonableCheckIds'] == null ? null : ((map['abandonableCheckIds'] as List).cast<String>()).input(),
      accountNamePrefix: map['accountNamePrefix'] == null ? null : (map['accountNamePrefix'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      folderId: map['folderId'] == null ? null : (map['folderId'] as String).input(),
      forceDelete: map['forceDelete'] == null ? null : (map['forceDelete'] as bool).input(),
      joinMethod: map['joinMethod'] == null ? null : (map['joinMethod'] as String).input(),
      joinTime: map['joinTime'] == null ? null : (map['joinTime'] as String).input(),
      modifyTime: map['modifyTime'] == null ? null : (map['modifyTime'] as String).input(),
      payerAccountId: map['payerAccountId'] == null ? null : (map['payerAccountId'] as String).input(),
      resellAccountType: map['resellAccountType'] == null ? null : (map['resellAccountType'] as String).input(),
      resourceDirectoryId: map['resourceDirectoryId'] == null ? null : (map['resourceDirectoryId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

