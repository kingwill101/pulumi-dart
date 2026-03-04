// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_last_access_status_contract_properties_response.dart';

/// KeyVault contract details.
class KeyVaultContractPropertiesResponse {
  /// Null for SystemAssignedIdentity or Client Id for UserAssignedIdentity , which will be used to access key vault secret.
  final pulumi.Input<String>? identityClientId;

  /// Last time sync and refresh status of secret from key vault.
  final pulumi.Input<KeyVaultLastAccessStatusContractPropertiesResponse>?
  lastStatus;

  /// Key vault secret identifier for fetching secret. Providing a versioned secret will prevent auto-refresh. This requires API Management service to be configured with aka.ms/apimmsi
  final pulumi.Input<String>? secretIdentifier;

  /// Creates a new [KeyVaultContractPropertiesResponse].
  /// [identityClientId] Null for SystemAssignedIdentity or Client Id for UserAssignedIdentity , which will be used to access key vault secret.
  /// [lastStatus] Last time sync and refresh status of secret from key vault.
  /// [secretIdentifier] Key vault secret identifier for fetching secret. Providing a versioned secret will prevent auto-refresh. This requires API Management service to be configured with aka.ms/apimmsi
  KeyVaultContractPropertiesResponse({
    this.identityClientId,
    this.lastStatus,
    this.secretIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'lastStatus':
          ?pulumi.Input.mapOptionalInputValue<
            KeyVaultLastAccessStatusContractPropertiesResponse,
            Map<String, dynamic>
          >(lastStatus, (value) => value.toMap()),
      'secretIdentifier': ?secretIdentifier,
    };
  }

  factory KeyVaultContractPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultContractPropertiesResponse(
      identityClientId: (() {
        final guardedValue = map['identityClientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastStatus: (() {
        final guardedValue = map['lastStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KeyVaultLastAccessStatusContractPropertiesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      secretIdentifier: (() {
        final guardedValue = map['secretIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
