// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_account_public_access_block_account_public_access_block_args_doc}
/// The set of arguments for AccountPublicAccessBlock.
/// {@endtemplate}
/// {@macro pulumi_oss_account_public_access_block_account_public_access_block_args_doc}
class AccountPublicAccessBlockArgs {
  /// Whether or not AlibabaCloud OSS should block public bucket policies for buckets in this account is enabled.
  final pulumi.Input<bool> blockPublicAccess;

  /// Creates a new [AccountPublicAccessBlockArgs].
  /// [blockPublicAccess] Whether or not AlibabaCloud OSS should block public bucket policies for buckets in this account is enabled.
  AccountPublicAccessBlockArgs({
    required pulumi.Output<bool> blockPublicAccess,
  }) :
      blockPublicAccess = pulumi.Input.asInput<bool>(blockPublicAccess);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockPublicAccess': blockPublicAccess,
    };
  }

  factory AccountPublicAccessBlockArgs.fromMap(Map<String, dynamic> map) {
    return AccountPublicAccessBlockArgs(
      blockPublicAccess: pulumi.Output.create<bool>(map['blockPublicAccess'] as bool),
    );
  }
}

