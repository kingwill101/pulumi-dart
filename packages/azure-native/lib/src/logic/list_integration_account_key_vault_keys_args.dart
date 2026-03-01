// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_reference.dart';

/// {@template pulumi_logic_list_integration_account_key_vault_keys_args_doc}
/// Arguments for listIntegrationAccountKeyVaultKeys.
/// {@endtemplate}
/// {@macro pulumi_logic_list_integration_account_key_vault_keys_args_doc}
class ListIntegrationAccountKeyVaultKeysArgs {
  /// The integration account name.
  final pulumi.Input<String> integrationAccountName;
  /// The key vault reference.
  final pulumi.Input<KeyVaultReference> keyVault;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The skip token.
  final pulumi.Input<String>? skipToken;

  /// Creates a new [ListIntegrationAccountKeyVaultKeysArgs].
  /// [integrationAccountName] The integration account name.
  /// [keyVault] The key vault reference.
  /// [resourceGroupName] The resource group name.
  /// [skipToken] The skip token.
  ListIntegrationAccountKeyVaultKeysArgs({
    required String integrationAccountName,
    required KeyVaultReference keyVault,
    required String resourceGroupName,
    String? skipToken,
  }) :
      integrationAccountName = pulumi.Input.asInput<String>(integrationAccountName),
      keyVault = pulumi.Input.asInput<KeyVaultReference>(keyVault),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skipToken = pulumi.Input.asOptionalInput<String>(skipToken);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationAccountName': integrationAccountName,
      'keyVault': pulumi.Input.mapInputValue<KeyVaultReference, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'skipToken': ?skipToken,
    };
  }

  factory ListIntegrationAccountKeyVaultKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListIntegrationAccountKeyVaultKeysArgs(
      integrationAccountName: map['integrationAccountName'] as String,
      keyVault: KeyVaultReference.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      skipToken: map['skipToken'] == null ? null : map['skipToken'] as String,
    );
  }
}

