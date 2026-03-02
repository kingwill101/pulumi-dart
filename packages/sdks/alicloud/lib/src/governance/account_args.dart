// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_account_tag.dart';

/// {@template pulumi_governance_account_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_governance_account_account_args_doc}
class AccountArgs {
  /// The ID of the enrolled account.
  /// - If you are creating a new resource account, this parameter is not required.
  /// - If you are enrolling a existing account to account factory, this parameter is required.
  final pulumi.Input<int>? accountId;
  /// Account name prefix.
  /// - This parameter is required if you are creating a new resource account.
  /// - If the registration application is applied to an existing account, this parameter does not need to be filled in.
  final pulumi.Input<String>? accountNamePrefix;
  /// The tags of the account See `account_tags` below.
  final pulumi.Input<List<AccountAccountTag>>? accountTags;
  /// The baseline ID.
  ///
  /// If it is left blank, the system default baseline is used by default.
  final pulumi.Input<String> baselineId;
  /// The domain name is used to qualify the login name of RAM users and RAM roles.
  final pulumi.Input<String>? defaultDomainName;
  /// The account display name.
  /// - This parameter is required if you are creating a new resource account.
  /// - If the registration application is applied to an existing account, this parameter does not need to be filled in.
  final pulumi.Input<String>? displayName;
  /// The ID of the parent resource folder.
  ///
  /// If you want to create a new resource account and leave this parameter blank, the account is created in the Root folder by default.
  ///
  /// If the registration application is applied to an existing account, this parameter does not need to be filled in.
  final pulumi.Input<String>? folderId;
  /// The ID of the billing account. If you leave this parameter empty, the current account is used as the billing account.
  final pulumi.Input<int>? payerAccountId;

  /// Creates a new [AccountArgs].
  /// [accountId] The ID of the enrolled account.
  /// [accountNamePrefix] Account name prefix.
  /// [accountTags] The tags of the account See `account_tags` below.
  /// [baselineId] The baseline ID.
  /// [defaultDomainName] The domain name is used to qualify the login name of RAM users and RAM roles.
  /// [displayName] The account display name.
  /// [folderId] The ID of the parent resource folder.
  /// [payerAccountId] The ID of the billing account. If you leave this parameter empty, the current account is used as the billing account.
  AccountArgs({
    this.accountId,
    this.accountNamePrefix,
    this.accountTags,
    required this.baselineId,
    this.defaultDomainName,
    this.displayName,
    this.folderId,
    this.payerAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountNamePrefix': ?accountNamePrefix,
      'accountTags': ?pulumi.Input.mapOptionalInputValue<List<AccountAccountTag>, List<Map<String, dynamic>>>(accountTags, (value) => pulumi.Input.encodeList<AccountAccountTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'baselineId': baselineId,
      'defaultDomainName': ?defaultDomainName,
      'displayName': ?displayName,
      'folderId': ?folderId,
      'payerAccountId': ?payerAccountId,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountId: map['accountId'] == null ? null : (map['accountId'] as int).input(),
      accountNamePrefix: map['accountNamePrefix'] == null ? null : (map['accountNamePrefix'] as String).input(),
      accountTags: map['accountTags'] == null ? null : (pulumi.Input.decodeList<AccountAccountTag>(map['accountTags'], (value) => AccountAccountTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      baselineId: (map['baselineId'] as String).input(),
      defaultDomainName: map['defaultDomainName'] == null ? null : (map['defaultDomainName'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      folderId: map['folderId'] == null ? null : (map['folderId'] as String).input(),
      payerAccountId: map['payerAccountId'] == null ? null : (map['payerAccountId'] as int).input(),
    );
  }
}

