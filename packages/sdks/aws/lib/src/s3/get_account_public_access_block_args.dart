// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_get_account_public_access_block_get_account_public_access_block_args_doc}
/// Arguments for getAccountPublicAccessBlock.
/// {@endtemplate}
/// {@macro pulumi_s3_get_account_public_access_block_get_account_public_access_block_args_doc}
class GetAccountPublicAccessBlockArgs {
  /// AWS account ID to configure. Defaults to automatically determined account ID of the AWS provider.
  final pulumi.Input<String>? accountId;

  /// Creates a new [GetAccountPublicAccessBlockArgs].
  /// [accountId] AWS account ID to configure. Defaults to automatically determined account ID of the AWS provider.
  const GetAccountPublicAccessBlockArgs({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory GetAccountPublicAccessBlockArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountPublicAccessBlockArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

