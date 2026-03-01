// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitive_account_customer_managed_key_account_customer_managed_key_args_doc}
/// The set of arguments for AccountCustomerManagedKey.
/// {@endtemplate}
/// {@macro pulumi_cognitive_account_customer_managed_key_account_customer_managed_key_args_doc}
class AccountCustomerManagedKeyArgs {
  /// The ID of the Cognitive Account. Changing this forces a new resource to be created.
  final pulumi.Input<String> cognitiveAccountId;
  /// The Client ID of the User Assigned Identity that has access to the key. This property only needs to be specified when there're multiple identities attached to the Cognitive Account.
  final pulumi.Input<String>? identityClientId;
  /// The ID of the Key Vault Key which should be used to Encrypt the data in this Cognitive Account.
  final pulumi.Input<String> keyVaultKeyId;

  /// Creates a new [AccountCustomerManagedKeyArgs].
  /// [cognitiveAccountId] The ID of the Cognitive Account. Changing this forces a new resource to be created.
  /// [identityClientId] The Client ID of the User Assigned Identity that has access to the key. This property only needs to be specified when there're multiple identities attached to the Cognitive Account.
  /// [keyVaultKeyId] The ID of the Key Vault Key which should be used to Encrypt the data in this Cognitive Account.
  AccountCustomerManagedKeyArgs({
    required String cognitiveAccountId,
    String? identityClientId,
    required String keyVaultKeyId,
  }) :
      cognitiveAccountId = pulumi.Input.asInput<String>(cognitiveAccountId),
      identityClientId = pulumi.Input.asOptionalInput<String>(identityClientId),
      keyVaultKeyId = pulumi.Input.asInput<String>(keyVaultKeyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cognitiveAccountId': cognitiveAccountId,
      'identityClientId': ?identityClientId,
      'keyVaultKeyId': keyVaultKeyId,
    };
  }

  factory AccountCustomerManagedKeyArgs.fromMap(Map<String, dynamic> map) {
    return AccountCustomerManagedKeyArgs(
      cognitiveAccountId: map['cognitiveAccountId'] as String,
      identityClientId: map['identityClientId'] == null ? null : map['identityClientId'] as String,
      keyVaultKeyId: map['keyVaultKeyId'] as String,
    );
  }
}

