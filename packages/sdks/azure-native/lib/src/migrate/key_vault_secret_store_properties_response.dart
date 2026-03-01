// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_properties_response.dart';

class KeyVaultSecretStorePropertiesResponse {
  final String inputType;
  final String? keyvaultName;
  final ManagedIdentityPropertiesResponse? managedIdentityProperties;
  final String? resourceGroup;
  final String? secretStoreId;
  final String? subscriptionId;
  final String? tenantId;

  /// Creates a new [KeyVaultSecretStorePropertiesResponse].
  /// [inputType] Required.
  /// [keyvaultName] Optional.
  /// [managedIdentityProperties] Optional.
  /// [resourceGroup] Optional.
  /// [secretStoreId] Optional.
  /// [subscriptionId] Optional.
  /// [tenantId] Optional.
  KeyVaultSecretStorePropertiesResponse({
    required this.inputType,
    this.keyvaultName,
    this.managedIdentityProperties,
    this.resourceGroup,
    this.secretStoreId,
    this.subscriptionId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputType': inputType,
      'keyvaultName': ?keyvaultName,
      'managedIdentityProperties': ?managedIdentityProperties == null ? null : managedIdentityProperties!.toMap(),
      'resourceGroup': ?resourceGroup,
      'secretStoreId': ?secretStoreId,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
    };
  }

  factory KeyVaultSecretStorePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretStorePropertiesResponse(
      inputType: map['inputType'] as String,
      keyvaultName: map['keyvaultName'] == null ? null : map['keyvaultName'] as String,
      managedIdentityProperties: map['managedIdentityProperties'] == null ? null : ManagedIdentityPropertiesResponse.fromMap((map['managedIdentityProperties'] as Map).cast<String, dynamic>()),
      resourceGroup: map['resourceGroup'] == null ? null : map['resourceGroup'] as String,
      secretStoreId: map['secretStoreId'] == null ? null : map['secretStoreId'] as String,
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

