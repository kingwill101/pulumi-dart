// ignore_for_file: unused_element, unnecessary_cast

import 'azure_key_vault_secret_reference_response.dart';
import 'credential_reference_response.dart';

/// Sql always encrypted properties.
class SqlAlwaysEncryptedPropertiesResponse {
  /// Sql always encrypted AKV authentication type. Type: string.
  final String alwaysEncryptedAkvAuthType;
  /// The credential reference containing authentication information.
  final CredentialReferenceResponse? credential;
  /// The client ID of the application in Azure Active Directory used for Azure Key Vault authentication. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalId;
  /// The key of the service principal used to authenticate against Azure Key Vault.
  final AzureKeyVaultSecretReferenceResponse? servicePrincipalKey;

  /// Creates a new [SqlAlwaysEncryptedPropertiesResponse].
  /// [alwaysEncryptedAkvAuthType] Sql always encrypted AKV authentication type. Type: string.
  /// [credential] The credential reference containing authentication information.
  /// [servicePrincipalId] The client ID of the application in Azure Active Directory used for Azure Key Vault authentication. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] The key of the service principal used to authenticate against Azure Key Vault.
  SqlAlwaysEncryptedPropertiesResponse({
    required this.alwaysEncryptedAkvAuthType,
    this.credential,
    this.servicePrincipalId,
    this.servicePrincipalKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysEncryptedAkvAuthType': alwaysEncryptedAkvAuthType,
      'credential': ?credential == null ? null : credential!.toMap(),
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey == null ? null : servicePrincipalKey!.toMap(),
    };
  }

  factory SqlAlwaysEncryptedPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlAlwaysEncryptedPropertiesResponse(
      alwaysEncryptedAkvAuthType: map['alwaysEncryptedAkvAuthType'] as String,
      credential: map['credential'] == null ? null : CredentialReferenceResponse.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : map['servicePrincipalId'],
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['servicePrincipalKey'] as Map).cast<String, dynamic>()),
    );
  }
}

