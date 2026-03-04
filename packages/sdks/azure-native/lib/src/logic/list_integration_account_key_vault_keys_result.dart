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
  ListIntegrationAccountKeyVaultKeysResult({this.skipToken, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skipToken': ?skipToken,
      'value': ?(() {
        final guardedValue = value;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          KeyVaultKeyResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory ListIntegrationAccountKeyVaultKeysResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListIntegrationAccountKeyVaultKeysResult(
      skipToken: (() {
        final guardedValue = map['skipToken'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<KeyVaultKeyResponse>(
          guardedValue,
          (value) => KeyVaultKeyResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
