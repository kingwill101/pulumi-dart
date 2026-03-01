// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_account_account_args_doc}
class AccountArgs {
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
  final pulumi.Input<String> displayName;
  /// The ID of the parent folder
  final pulumi.Input<String>? folderId;
  /// Whether to force delete the account.
  final pulumi.Input<bool>? forceDelete;
  /// The settlement account ID. If it is left blank, the newly created member will be used for self-settlement.
  final pulumi.Input<String>? payerAccountId;
  /// The identity type of the member. Valid values:
  /// - resell: The member is an account for a reseller. This is the default value. A relationship is automatically established between the member and the reseller. The management account of the resource directory must be used as the billing account of the member.
  /// - non_resell: The member is not an account for a reseller. The member is an account that is not associated with a reseller. You can directly use the account to purchase Alibaba Cloud resources. The member is used as its own billing account.
  ///
  /// > **NOTE:**  This parameter is available only for resellers at the international site (alibabacloud.com).
  final pulumi.Input<String>? resellAccountType;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// Member type. The value of ResourceAccount indicates the resource account
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? type;

  /// Creates a new [AccountArgs].
  /// [abandonAbleCheckIds] . Field 'abandon_able_check_id' has been deprecated from provider version 1.249.0. New field 'abandonable_check_id' instead.
  /// [abandonableCheckIds] The ID of the check item that can choose to abandon and continue to perform member deletion.
  /// [accountNamePrefix] Account name prefix. Empty the system randomly generated.
  /// [displayName] Member name
  /// [folderId] The ID of the parent folder
  /// [forceDelete] Whether to force delete the account.
  /// [payerAccountId] The settlement account ID. If it is left blank, the newly created member will be used for self-settlement.
  /// [resellAccountType] The identity type of the member. Valid values:
  /// [tags] The tag of the resource
  /// [type] Member type. The value of ResourceAccount indicates the resource account
  AccountArgs({
    pulumi.Output<List<String>>? abandonAbleCheckIds,
    pulumi.Output<List<String>>? abandonableCheckIds,
    pulumi.Output<String>? accountNamePrefix,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? folderId,
    pulumi.Output<bool>? forceDelete,
    pulumi.Output<String>? payerAccountId,
    pulumi.Output<String>? resellAccountType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
  }) :
      abandonAbleCheckIds = pulumi.Input.asOptionalInput<List<String>>(abandonAbleCheckIds),
      abandonableCheckIds = pulumi.Input.asOptionalInput<List<String>>(abandonableCheckIds),
      accountNamePrefix = pulumi.Input.asOptionalInput<String>(accountNamePrefix),
      displayName = pulumi.Input.asInput<String>(displayName),
      folderId = pulumi.Input.asOptionalInput<String>(folderId),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      payerAccountId = pulumi.Input.asOptionalInput<String>(payerAccountId),
      resellAccountType = pulumi.Input.asOptionalInput<String>(resellAccountType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abandonAbleCheckIds': ?abandonAbleCheckIds,
      'abandonableCheckIds': ?abandonableCheckIds,
      'accountNamePrefix': ?accountNamePrefix,
      'displayName': displayName,
      'folderId': ?folderId,
      'forceDelete': ?forceDelete,
      'payerAccountId': ?payerAccountId,
      'resellAccountType': ?resellAccountType,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      abandonAbleCheckIds: map['abandonAbleCheckIds'] == null ? null : pulumi.Output.create<List<String>>((map['abandonAbleCheckIds'] as List).cast<String>()),
      abandonableCheckIds: map['abandonableCheckIds'] == null ? null : pulumi.Output.create<List<String>>((map['abandonableCheckIds'] as List).cast<String>()),
      accountNamePrefix: map['accountNamePrefix'] == null ? null : pulumi.Output.create<String>(map['accountNamePrefix'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      folderId: map['folderId'] == null ? null : pulumi.Output.create<String>(map['folderId'] as String),
      forceDelete: map['forceDelete'] == null ? null : pulumi.Output.create<bool>(map['forceDelete'] as bool),
      payerAccountId: map['payerAccountId'] == null ? null : pulumi.Output.create<String>(map['payerAccountId'] as String),
      resellAccountType: map['resellAccountType'] == null ? null : pulumi.Output.create<String>(map['resellAccountType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

