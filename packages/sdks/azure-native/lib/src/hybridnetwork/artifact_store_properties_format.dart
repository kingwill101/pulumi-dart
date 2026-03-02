// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_store_properties_format_managed_resource_group_configuration.dart';

/// Artifact store properties.
class ArtifactStorePropertiesFormat {
  /// The artifact store backing resource network access type
  final pulumi.Input<String>? backingResourcePublicNetworkAccess;
  final pulumi.Input<ArtifactStorePropertiesFormatManagedResourceGroupConfiguration>? managedResourceGroupConfiguration;
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
      'managedResourceGroupConfiguration': ?pulumi.Input.mapOptionalInputValue<ArtifactStorePropertiesFormatManagedResourceGroupConfiguration, Map<String, dynamic>>(managedResourceGroupConfiguration, (value) => value.toMap()),
      'replicationStrategy': ?replicationStrategy,
      'storeType': ?storeType,
    };
  }

  factory ArtifactStorePropertiesFormat.fromMap(Map<String, dynamic> map) {
    return ArtifactStorePropertiesFormat(
      backingResourcePublicNetworkAccess: map['backingResourcePublicNetworkAccess'] == null ? null : (map['backingResourcePublicNetworkAccess'] as String).input(),
      managedResourceGroupConfiguration: map['managedResourceGroupConfiguration'] == null ? null : (ArtifactStorePropertiesFormatManagedResourceGroupConfiguration.fromMap((map['managedResourceGroupConfiguration'] as Map).cast<String, dynamic>())).input(),
      replicationStrategy: map['replicationStrategy'] == null ? null : (map['replicationStrategy'] as String).input(),
      storeType: map['storeType'] == null ? null : (map['storeType'] as String).input(),
    );
  }
}

