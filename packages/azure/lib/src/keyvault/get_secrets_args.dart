// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_secrets_get_secrets_args_doc}
/// Arguments for getSecrets.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_secrets_get_secrets_args_doc}
class GetSecretsArgs {
  /// Specifies the ID of the Key Vault instance to fetch secret names from, available on the `azure.keyvault.KeyVault` Data Source / Resource.
  ///
  /// > **Note:** The vault must be in the same subscription as the provider. If the vault is in another subscription, you must create an aliased provider for that subscription.
  final pulumi.Input<String> keyVaultId;

  /// Creates a new [GetSecretsArgs].
  /// [keyVaultId] Specifies the ID of the Key Vault instance to fetch secret names from, available on the `azure.keyvault.KeyVault` Data Source / Resource.
  GetSecretsArgs({
    required String keyVaultId,
  }) :
      keyVaultId = pulumi.Input.asInput<String>(keyVaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': keyVaultId,
    };
  }

  factory GetSecretsArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretsArgs(
      keyVaultId: map['keyVaultId'] as String,
    );
  }
}

