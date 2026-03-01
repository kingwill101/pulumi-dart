// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_key_response.dart';

/// Result data returned by listIntegrationAccountKeyVaultKeys.
class ListIntegrationAccountKeyVaultKeysResult {
  /// The skip token.
  final String? skipToken;
  /// The key vault keys.
  final List<KeyVaultKeyResponse>? value;

  /// Creates a new [ListIntegrationAccountKeyVaultKeysResult].
  /// [skipToken] The skip token.
  /// [value] The key vault keys.
  ListIntegrationAccountKeyVaultKeysResult({
    this.skipToken,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skipToken': ?skipToken,
      'value': ?value == null ? null : pulumi.Input.encodeList<KeyVaultKeyResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListIntegrationAccountKeyVaultKeysResult.fromMap(Map<String, dynamic> map) {
    return ListIntegrationAccountKeyVaultKeysResult(
      skipToken: map['skipToken'] == null ? null : map['skipToken'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<KeyVaultKeyResponse>(map['value'], (value) => KeyVaultKeyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

