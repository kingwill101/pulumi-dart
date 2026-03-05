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
    required this.integrationAccountName,
    required this.keyVault,
    required this.resourceGroupName,
    this.skipToken,
  });

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
      integrationAccountName: pulumi.Input.fromValue(map['integrationAccountName'] as String),
      keyVault: pulumi.Input.fromValue(KeyVaultReference.fromMap((map['keyVault']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      skipToken: (() { final guardedValue = map['skipToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

