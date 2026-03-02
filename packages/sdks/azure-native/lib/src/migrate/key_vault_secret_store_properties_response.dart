// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_properties_response.dart';

class KeyVaultSecretStorePropertiesResponse {
  final pulumi.Input<String> inputType;
  final pulumi.Input<String>? keyvaultName;
  final pulumi.Input<ManagedIdentityPropertiesResponse>? managedIdentityProperties;
  final pulumi.Input<String>? resourceGroup;
  final pulumi.Input<String>? secretStoreId;
  final pulumi.Input<String>? subscriptionId;
  final pulumi.Input<String>? tenantId;

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
      'managedIdentityProperties': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityPropertiesResponse, Map<String, dynamic>>(managedIdentityProperties, (value) => value.toMap()),
      'resourceGroup': ?resourceGroup,
      'secretStoreId': ?secretStoreId,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
    };
  }

  factory KeyVaultSecretStorePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretStorePropertiesResponse(
      inputType: (map['inputType'] as String).input(),
      keyvaultName: map['keyvaultName'] == null ? null : (map['keyvaultName'] as String).input(),
      managedIdentityProperties: map['managedIdentityProperties'] == null ? null : (ManagedIdentityPropertiesResponse.fromMap((map['managedIdentityProperties'] as Map).cast<String, dynamic>())).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (map['resourceGroup'] as String).input(),
      secretStoreId: map['secretStoreId'] == null ? null : (map['secretStoreId'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

