// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_account_encryption_get_account_encryption_args_doc}
/// Arguments for getAccountEncryption.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_account_encryption_get_account_encryption_args_doc}
class GetAccountEncryptionArgs {
  /// The ID of the NetApp account where customer managed keys-based encryption is enabled.
  final pulumi.Input<String> netappAccountId;

  /// Creates a new [GetAccountEncryptionArgs].
  /// [netappAccountId] The ID of the NetApp account where customer managed keys-based encryption is enabled.
  GetAccountEncryptionArgs({
    required String netappAccountId,
  }) :
      netappAccountId = pulumi.Input.asInput<String>(netappAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'netappAccountId': netappAccountId,
    };
  }

  factory GetAccountEncryptionArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountEncryptionArgs(
      netappAccountId: map['netappAccountId'] as String,
    );
  }
}

