// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_store_properties_format_managed_resource_group_configuration.dart';

/// Artifact store properties.
class ArtifactStorePropertiesFormat {
  /// The artifact store backing resource network access type
  final pulumi.Input<String>? backingResourcePublicNetworkAccess;
  final pulumi.Input<
    ArtifactStorePropertiesFormatManagedResourceGroupConfiguration
  >?
  managedResourceGroupConfiguration;

  /// The replication strategy.
  final pulumi.Input<String>? replicationStrategy;

  /// The artifact store type.
  final pulumi.Input<String>? storeType;

  /// Creates a new [ArtifactStorePropertiesFormat].
  /// [backingResourcePublicNetworkAccess] The artifact store backing resource network access type
  /// [managedResourceGroupConfiguration] Optional.
  /// [replicationStrategy] The replication strategy.
  /// [storeType] The artifact store type.
  ArtifactStorePropertiesFormat({
    this.backingResourcePublicNetworkAccess,
    this.managedResourceGroupConfiguration,
    this.replicationStrategy,
    this.storeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backingResourcePublicNetworkAccess': ?backingResourcePublicNetworkAccess,
      'managedResourceGroupConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ArtifactStorePropertiesFormatManagedResourceGroupConfiguration,
            Map<String, dynamic>
          >(managedResourceGroupConfiguration, (value) => value.toMap()),
      'replicationStrategy': ?replicationStrategy,
      'storeType': ?storeType,
    };
  }

  factory ArtifactStorePropertiesFormat.fromMap(Map<String, dynamic> map) {
    return ArtifactStorePropertiesFormat(
      backingResourcePublicNetworkAccess: (() {
        final guardedValue = map['backingResourcePublicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedResourceGroupConfiguration: (() {
        final guardedValue = map['managedResourceGroupConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ArtifactStorePropertiesFormatManagedResourceGroupConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      replicationStrategy: (() {
        final guardedValue = map['replicationStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storeType: (() {
        final guardedValue = map['storeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
