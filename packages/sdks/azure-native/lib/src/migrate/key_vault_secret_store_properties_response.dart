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
      inputType: pulumi.Input.fromValue(map['inputType'] as String),
      keyvaultName: (() { final guardedValue = map['keyvaultName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedIdentityProperties: (() { final guardedValue = map['managedIdentityProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedIdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretStoreId: (() { final guardedValue = map['secretStoreId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

