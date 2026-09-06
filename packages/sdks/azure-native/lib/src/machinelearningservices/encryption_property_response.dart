// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_for_cmk_response.dart';
import 'key_vault_properties_response.dart';

class EncryptionPropertyResponse {
  /// The byok cosmosdb account that customer brings to store customer's data
  /// with encryption
  final pulumi.Input<String?>? cosmosDbResourceId;
  /// Identity to be used with the keyVault
  final pulumi.Input<IdentityForCmkResponse?>? identity;
  /// KeyVault details to do the encryption
  final pulumi.Input<KeyVaultPropertiesResponse> keyVaultProperties;
  /// The byok search account that customer brings to store customer's data
  /// with encryption
  final pulumi.Input<String?>? searchAccountResourceId;
  /// Indicates whether or not the encryption is enabled for the workspace.
  final pulumi.Input<String> status;
  /// The byok storage account that customer brings to store customer's data
  /// with encryption
  final pulumi.Input<String?>? storageAccountResourceId;

  /// Creates a new [EncryptionPropertyResponse].
  /// [cosmosDbResourceId] The byok cosmosdb account that customer brings to store customer's data
  /// [identity] Identity to be used with the keyVault
  /// [keyVaultProperties] KeyVault details to do the encryption
  /// [searchAccountResourceId] The byok search account that customer brings to store customer's data
  /// [status] Indicates whether or not the encryption is enabled for the workspace.
  /// [storageAccountResourceId] The byok storage account that customer brings to store customer's data
  const EncryptionPropertyResponse({
    this.cosmosDbResourceId,
    this.identity,
    required this.keyVaultProperties,
    this.searchAccountResourceId,
    required this.status,
    this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosDbResourceId': ?cosmosDbResourceId,
      'identity': ?pulumi.Input.mapOptionalInputValue<IdentityForCmkResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultProperties': pulumi.Input.mapInputValue<KeyVaultPropertiesResponse, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'searchAccountResourceId': ?searchAccountResourceId,
      'status': status,
      'storageAccountResourceId': ?storageAccountResourceId,
    };
  }

  factory EncryptionPropertyResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertyResponse(
      cosmosDbResourceId: (() { final guardedValue = map['cosmosDbResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityForCmkResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVaultProperties: pulumi.Input.fromValue(KeyVaultPropertiesResponse.fromMap((map['keyVaultProperties']! as Map).cast<String, dynamic>())),
      searchAccountResourceId: (() { final guardedValue = map['searchAccountResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      storageAccountResourceId: (() { final guardedValue = map['storageAccountResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
