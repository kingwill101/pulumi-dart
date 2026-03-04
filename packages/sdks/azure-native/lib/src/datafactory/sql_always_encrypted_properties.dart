// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'credential_reference.dart';

/// Sql always encrypted properties.
class SqlAlwaysEncryptedProperties {
  /// Sql always encrypted AKV authentication type. Type: string.
  final pulumi.Input<String> alwaysEncryptedAkvAuthType;

  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReference>? credential;

  /// The client ID of the application in Azure Active Directory used for Azure Key Vault authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalId;

  /// The key of the service principal used to authenticate against Azure Key Vault.
  final pulumi.Input<AzureKeyVaultSecretReference>? servicePrincipalKey;

  /// Creates a new [SqlAlwaysEncryptedProperties].
  /// [alwaysEncryptedAkvAuthType] Sql always encrypted AKV authentication type. Type: string.
  /// [credential] The credential reference containing authentication information.
  /// [servicePrincipalId] The client ID of the application in Azure Active Directory used for Azure Key Vault authentication. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] The key of the service principal used to authenticate against Azure Key Vault.
  SqlAlwaysEncryptedProperties({
    required this.alwaysEncryptedAkvAuthType,
    this.credential,
    this.servicePrincipalId,
    this.servicePrincipalKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysEncryptedAkvAuthType': alwaysEncryptedAkvAuthType,
      'credential':
          ?pulumi.Input.mapOptionalInputValue<
            CredentialReference,
            Map<String, dynamic>
          >(credential, (value) => value.toMap()),
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReference,
            Map<String, dynamic>
          >(servicePrincipalKey, (value) => value.toMap()),
    };
  }

  factory SqlAlwaysEncryptedProperties.fromMap(Map<String, dynamic> map) {
    return SqlAlwaysEncryptedProperties(
      alwaysEncryptedAkvAuthType: pulumi.Input.fromValue(
        map['alwaysEncryptedAkvAuthType'] as String,
      ),
      credential: (() {
        final guardedValue = map['credential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CredentialReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      servicePrincipalId: (() {
        final guardedValue = map['servicePrincipalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      servicePrincipalKey: (() {
        final guardedValue = map['servicePrincipalKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
