// ignore_for_file: unused_element, unnecessary_cast

import 'artifact_store_properties_format_managed_resource_group_configuration.dart';

/// Artifact store properties.
class ArtifactStorePropertiesFormat {
  /// The artifact store backing resource network access type
  final String? backingResourcePublicNetworkAccess;
  final ArtifactStorePropertiesFormatManagedResourceGroupConfiguration? managedResourceGroupConfiguration;
  /// The replication strategy.
  final String? replicationStrategy;
  /// The artifact store type.
  final String? storeType;

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
      'managedResourceGroupConfiguration': ?managedResourceGroupConfiguration == null ? null : managedResourceGroupConfiguration!.toMap(),
      'replicationStrategy': ?replicationStrategy,
      'storeType': ?storeType,
    };
  }

  factory ArtifactStorePropertiesFormat.fromMap(Map<String, dynamic> map) {
    return ArtifactStorePropertiesFormat(
      backingResourcePublicNetworkAccess: map['backingResourcePublicNetworkAccess'] == null ? null : map['backingResourcePublicNetworkAccess'] as String,
      managedResourceGroupConfiguration: map['managedResourceGroupConfiguration'] == null ? null : ArtifactStorePropertiesFormatManagedResourceGroupConfiguration.fromMap((map['managedResourceGroupConfiguration'] as Map).cast<String, dynamic>()),
      replicationStrategy: map['replicationStrategy'] == null ? null : map['replicationStrategy'] as String,
      storeType: map['storeType'] == null ? null : map['storeType'] as String,
    );
  }
}

