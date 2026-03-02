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
      backingResourcePublicNetworkAccess: map['backingResourcePublicNetworkAccess'] == null ? null : (map['backingResourcePublicNetworkAccess']! as String).input(),
      managedResourceGroupConfiguration: map['managedResourceGroupConfiguration'] == null ? null : (ArtifactStorePropertiesFormatResponseManagedResourceGroupConfiguration.fromMap((map['managedResourceGroupConfiguration']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      replicationStrategy: map['replicationStrategy'] == null ? null : (map['replicationStrategy']! as String).input(),
      storageResourceId: (map['storageResourceId'] as String).input(),
      storeType: map['storeType'] == null ? null : (map['storeType']! as String).input(),
    );
  }
}

