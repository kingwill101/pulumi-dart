// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_last_access_status_contract_properties_response.dart';

/// KeyVault contract details.
class KeyVaultContractPropertiesResponse {
  /// Null for SystemAssignedIdentity or Client Id for UserAssignedIdentity , which will be used to access key vault secret.
  final String? identityClientId;
  /// Last time sync and refresh status of secret from key vault.
  final KeyVaultLastAccessStatusContractPropertiesResponse? lastStatus;
  /// Key vault secret identifier for fetching secret. Providing a versioned secret will prevent auto-refresh. This requires API Management service to be configured with aka.ms/apimmsi
  final String? secretIdentifier;

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
      'lastStatus': ?lastStatus == null ? null : lastStatus!.toMap(),
      'secretIdentifier': ?secretIdentifier,
    };
  }

  factory KeyVaultContractPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultContractPropertiesResponse(
      identityClientId: map['identityClientId'] == null ? null : map['identityClientId'] as String,
      lastStatus: map['lastStatus'] == null ? null : KeyVaultLastAccessStatusContractPropertiesResponse.fromMap((map['lastStatus'] as Map).cast<String, dynamic>()),
      secretIdentifier: map['secretIdentifier'] == null ? null : map['secretIdentifier'] as String,
    );
  }
}

