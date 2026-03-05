// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_service_reference_response.dart';

/// Azure Key Vault secret reference.
class AzureKeyVaultSecretReferenceResponse {
  /// The name of the secret in Azure Key Vault. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> secretName;
  /// The version of the secret in Azure Key Vault. The default value is the latest version of the secret. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? secretVersion;
  /// The Azure Key Vault linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse> store;
  /// Type of the secret.
  /// Expected value is 'AzureKeyVaultSecret'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureKeyVaultSecretReferenceResponse].
  /// [secretName] The name of the secret in Azure Key Vault. Type: string (or Expression with resultType string).
  /// [secretVersion] The version of the secret in Azure Key Vault. The default value is the latest version of the secret. Type: string (or Expression with resultType string).
  /// [store] The Azure Key Vault linked service reference.
  /// [type] Type of the secret.
  AzureKeyVaultSecretReferenceResponse({
    required this.secretName,
    this.secretVersion,
    required this.store,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretName': secretName,
      'secretVersion': ?secretVersion,
      'store': pulumi.Input.mapInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(store, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AzureKeyVaultSecretReferenceResponse.fromMap(Map<String, dynamic> map) {
    return AzureKeyVaultSecretReferenceResponse(
      secretName: pulumi.Input.fromValue(map['secretName']),
      secretVersion: (() { final guardedValue = map['secretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      store: pulumi.Input.fromValue(LinkedServiceReferenceResponse.fromMap((map['store']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

