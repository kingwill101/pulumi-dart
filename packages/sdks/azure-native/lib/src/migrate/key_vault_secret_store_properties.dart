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
  KeyVaultSecretStoreProperties({
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
      keyvaultName: map['keyvaultName'] == null ? null : (map['keyvaultName'] as String).input(),
      managedIdentityProperties: map['managedIdentityProperties'] == null ? null : (ManagedIdentityProperties.fromMap((map['managedIdentityProperties'] as Map).cast<String, dynamic>())).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (map['resourceGroup'] as String).input(),
      secretStoreId: map['secretStoreId'] == null ? null : (map['secretStoreId'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

