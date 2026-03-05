// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_store_properties_format_response_managed_resource_group_configuration.dart';

/// Artifact store properties.
class ArtifactStorePropertiesFormatResponse {
  /// The artifact store backing resource network access type
  final pulumi.Input<String>? backingResourcePublicNetworkAccess;
  final pulumi.Input<ArtifactStorePropertiesFormatResponseManagedResourceGroupConfiguration>? managedResourceGroupConfiguration;
  /// The provisioning state of the application groups resource.
  final pulumi.Input<String> provisioningState;
  /// The replication strategy.
  final pulumi.Input<String>? replicationStrategy;
  /// The created storage resource id
  final pulumi.Input<String> storageResourceId;
  /// The artifact store type.
  final pulumi.Input<String>? storeType;

  /// Creates a new [ArtifactStorePropertiesFormatResponse].
  /// [backingResourcePublicNetworkAccess] The artifact store backing resource network access type
  /// [managedResourceGroupConfiguration] Optional.
  /// [provisioningState] The provisioning state of the application groups resource.
  /// [replicationStrategy] The replication strategy.
  /// [storageResourceId] The created storage resource id
  /// [storeType] The artifact store type.
  ArtifactStorePropertiesFormatResponse({
    this.backingResourcePublicNetworkAccess,
    this.managedResourceGroupConfiguration,
    required this.provisioningState,
    this.replicationStrategy,
    required this.storageResourceId,
    this.storeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backingResourcePublicNetworkAccess': ?backingResourcePublicNetworkAccess,
      'managedResourceGroupConfiguration': ?pulumi.Input.mapOptionalInputValue<ArtifactStorePropertiesFormatResponseManagedResourceGroupConfiguration, Map<String, dynamic>>(managedResourceGroupConfiguration, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'replicationStrategy': ?replicationStrategy,
      'storageResourceId': storageResourceId,
      'storeType': ?storeType,
    };
  }

  factory ArtifactStorePropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactStorePropertiesFormatResponse(
      backingResourcePublicNetworkAccess: (() { final guardedValue = map['backingResourcePublicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourceGroupConfiguration: (() { final guardedValue = map['managedResourceGroupConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArtifactStorePropertiesFormatResponseManagedResourceGroupConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      replicationStrategy: (() { final guardedValue = map['replicationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageResourceId: pulumi.Input.fromValue(map['storageResourceId'] as String),
      storeType: (() { final guardedValue = map['storeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

