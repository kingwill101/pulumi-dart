// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_properties.dart';

class KeyVaultSecretStoreProperties {
  final pulumi.Input<String>? keyvaultName;
  final pulumi.Input<ManagedIdentityProperties>? managedIdentityProperties;
  final pulumi.Input<String>? resourceGroup;
  final pulumi.Input<String>? secretStoreId;
  final pulumi.Input<String>? subscriptionId;
  final pulumi.Input<String>? tenantId;

  /// Creates a new [KeyVaultSecretStoreProperties].
  /// [keyvaultName] Optional.
  /// [managedIdentityProperties] Optional.
  /// [resourceGroup] Optional.
  /// [secretStoreId] Optional.
  /// [subscriptionId] Optional.
  /// [tenantId] Optional.
  const KeyVaultSecretStoreProperties({
    this.keyvaultName,
    this.managedIdentityProperties,
    this.resourceGroup,
    this.secretStoreId,
    this.subscriptionId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyvaultName': ?keyvaultName,
      'managedIdentityProperties': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityProperties, Map<String, dynamic>>(managedIdentityProperties, (value) => value.toMap()),
      'resourceGroup': ?resourceGroup,
      'secretStoreId': ?secretStoreId,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
    };
  }

  factory KeyVaultSecretStoreProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretStoreProperties(
      keyvaultName: (() { final guardedValue = map['keyvaultName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedIdentityProperties: (() { final guardedValue = map['managedIdentityProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedIdentityProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretStoreId: (() { final guardedValue = map['secretStoreId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
